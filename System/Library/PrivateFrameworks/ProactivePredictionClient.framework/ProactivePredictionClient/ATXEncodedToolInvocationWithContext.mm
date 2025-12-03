@interface ATXEncodedToolInvocationWithContext
+ (id)localizedStringForParameterSuggestionContext:(unint64_t)context;
- (ATXEncodedToolInvocationWithContext)initWithCoder:(id)coder;
- (ATXEncodedToolInvocationWithContext)initWithEncodedInvocation:(id)invocation context:(unint64_t)context;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXEncodedToolInvocationWithContext

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  encodedInvocation = [(ATXEncodedToolInvocationWithContext *)self encodedInvocation];
  v6 = [v4 initWithEncodedInvocation:encodedInvocation context:{-[ATXEncodedToolInvocationWithContext context](self, "context")}];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      encodedInvocation = [(ATXEncodedToolInvocationWithContext *)v5 encodedInvocation];
      encodedInvocation2 = [(ATXEncodedToolInvocationWithContext *)self encodedInvocation];
      v8 = [encodedInvocation isEqual:encodedInvocation2];

      if (v8)
      {
        context = [(ATXEncodedToolInvocationWithContext *)v5 context];
        v10 = context == [(ATXEncodedToolInvocationWithContext *)self context];
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

- (void)encodeWithCoder:(id)coder
{
  encodedInvocation = self->_encodedInvocation;
  coderCopy = coder;
  [coderCopy encodeObject:encodedInvocation forKey:@"encodedInvocation"];
  [coderCopy encodeInteger:self->_context forKey:@"context"];
}

- (ATXEncodedToolInvocationWithContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = ATXEncodedToolInvocationWithContext;
  v5 = [(ATXEncodedToolInvocationWithContext *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"encodedInvocation"];
    encodedInvocation = v5->_encodedInvocation;
    v5->_encodedInvocation = v6;

    v5->_context = [coderCopy decodeIntegerForKey:@"context"];
  }

  return v5;
}

- (ATXEncodedToolInvocationWithContext)initWithEncodedInvocation:(id)invocation context:(unint64_t)context
{
  invocationCopy = invocation;
  v11.receiver = self;
  v11.super_class = ATXEncodedToolInvocationWithContext;
  v8 = [(ATXEncodedToolInvocationWithContext *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_encodedInvocation, invocation);
    v9->_context = context;
  }

  return v9;
}

+ (id)localizedStringForParameterSuggestionContext:(unint64_t)context
{
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = v4;
  if (context > 2)
  {
    if (context != 3)
    {
      if (context == 4)
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
    if (context != 1)
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