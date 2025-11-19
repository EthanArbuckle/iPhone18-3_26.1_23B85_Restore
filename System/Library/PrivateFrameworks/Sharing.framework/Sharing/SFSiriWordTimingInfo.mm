@interface SFSiriWordTimingInfo
+ (id)serializableArrayWithTimingInfoArray:(id)a3;
+ (id)timingInfoArrayWithSerializableArray:(id)a3;
- (SFSiriWordTimingInfo)initWithDictionary:(id)a3;
- (_NSRange)textRange;
- (id)dictionary;
@end

@implementation SFSiriWordTimingInfo

+ (id)serializableArrayWithTimingInfoArray:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) dictionary];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)timingInfoArrayWithSerializableArray:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = [SFSiriWordTimingInfo alloc];
          v12 = [(SFSiriWordTimingInfo *)v11 initWithDictionary:v10, v15];
          [v4 addObject:v12];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x1E69E9840];

  return v4;
}

- (SFSiriWordTimingInfo)initWithDictionary:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SFSiriWordTimingInfo;
  v5 = [(SFSiriWordTimingInfo *)&v9 init];
  if (v5)
  {
    CFDictionaryGetDouble();
    v5->_timeOffset = v6;
    v5->_textRange.location = CFDictionaryGetInt64Ranged();
    v5->_textRange.length = CFDictionaryGetInt64Ranged();
    v7 = v5;
  }

  return v5;
}

- (id)dictionary
{
  v10[3] = *MEMORY[0x1E69E9840];
  v9[0] = @"t";
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_timeOffset];
  v10[0] = v3;
  v9[1] = @"o";
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_textRange.location];
  v10[1] = v4;
  v9[2] = @"l";
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_textRange.length];
  v10[2] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:3];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (_NSRange)textRange
{
  length = self->_textRange.length;
  location = self->_textRange.location;
  result.length = length;
  result.location = location;
  return result;
}

@end