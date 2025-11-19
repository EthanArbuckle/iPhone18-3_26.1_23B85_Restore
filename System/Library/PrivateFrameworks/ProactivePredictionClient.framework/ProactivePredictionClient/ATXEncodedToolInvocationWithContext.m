@interface ATXEncodedToolInvocationWithContext
+ (id)localizedStringForParameterSuggestionContext:(unint64_t)a3;
- (ATXEncodedToolInvocationWithContext)initWithCoder:(id)a3;
- (ATXEncodedToolInvocationWithContext)initWithEncodedInvocation:(id)a3 context:(unint64_t)a4;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXEncodedToolInvocationWithContext

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(ATXEncodedToolInvocationWithContext *)self encodedInvocation];
  v6 = [v4 initWithEncodedInvocation:v5 context:{-[ATXEncodedToolInvocationWithContext context](self, "context")}];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(ATXEncodedToolInvocationWithContext *)v5 encodedInvocation];
      v7 = [(ATXEncodedToolInvocationWithContext *)self encodedInvocation];
      v8 = [v6 isEqual:v7];

      if (v8)
      {
        v9 = [(ATXEncodedToolInvocationWithContext *)v5 context];
        v10 = v9 == [(ATXEncodedToolInvocationWithContext *)self context];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  encodedInvocation = self->_encodedInvocation;
  v5 = a3;
  [v5 encodeObject:encodedInvocation forKey:@"encodedInvocation"];
  [v5 encodeInteger:self->_context forKey:@"context"];
}

- (ATXEncodedToolInvocationWithContext)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ATXEncodedToolInvocationWithContext;
  v5 = [(ATXEncodedToolInvocationWithContext *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"encodedInvocation"];
    encodedInvocation = v5->_encodedInvocation;
    v5->_encodedInvocation = v6;

    v5->_context = [v4 decodeIntegerForKey:@"context"];
  }

  return v5;
}

- (ATXEncodedToolInvocationWithContext)initWithEncodedInvocation:(id)a3 context:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = ATXEncodedToolInvocationWithContext;
  v8 = [(ATXEncodedToolInvocationWithContext *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_encodedInvocation, a3);
    v9->_context = a4;
  }

  return v9;
}

+ (id)localizedStringForParameterSuggestionContext:(unint64_t)a3
{
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = v4;
  if (a3 > 2)
  {
    if (a3 != 3)
    {
      if (a3 == 4)
      {
        v6 = @"COPIED_ITEM";
        v7 = @"Copied Item";
        goto LABEL_10;
      }

      goto LABEL_7;
    }

    v6 = @"CURRENT_SELECTION";
    v7 = @"Current Selection";
  }

  else
  {
    if (a3 != 1)
    {
LABEL_7:
      v6 = @"SUGGESTION";
      v7 = @"Suggestion";
      goto LABEL_10;
    }

    v6 = @"SELECTED_TEXT";
    v7 = @"Selected Text";
  }

LABEL_10:
  v8 = [v4 localizedStringForKey:v6 value:v7 table:0];

  return v8;
}

@end