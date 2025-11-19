@interface PKTextFieldTableViewSettingsRowFormatter
- (BOOL)isEqual:(id)a3;
- (id)submissionValueFromFormattedInput:(id)a3;
- (unint64_t)hash;
@end

@implementation PKTextFieldTableViewSettingsRowFormatter

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_formatPaddingCharacters];
  v4 = PKCombinedHash();

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v6 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = PKEqualObjects();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)submissionValueFromFormattedInput:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 length])
  {
    v5 = [v4 copy];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = [(PKTextFieldTableViewSettingsRowFormatter *)self formatPaddingCharacters];
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        v10 = 0;
        v11 = v5;
        do
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v5 = [v11 stringByReplacingOccurrencesOfString:*(*(&v13 + 1) + 8 * v10) withString:&stru_1F3BD7330];

          ++v10;
          v11 = v5;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end