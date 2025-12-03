@interface PKTextFieldTableViewSettingsRowFormatter
- (BOOL)isEqual:(id)equal;
- (id)submissionValueFromFormattedInput:(id)input;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = PKEqualObjects();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)submissionValueFromFormattedInput:(id)input
{
  v18 = *MEMORY[0x1E69E9840];
  inputCopy = input;
  if ([inputCopy length])
  {
    v5 = [inputCopy copy];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    formatPaddingCharacters = [(PKTextFieldTableViewSettingsRowFormatter *)self formatPaddingCharacters];
    v7 = [formatPaddingCharacters countByEnumeratingWithState:&v13 objects:v17 count:16];
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
            objc_enumerationMutation(formatPaddingCharacters);
          }

          v5 = [v11 stringByReplacingOccurrencesOfString:*(*(&v13 + 1) + 8 * v10) withString:&stru_1F3BD7330];

          ++v10;
          v11 = v5;
        }

        while (v8 != v10);
        v8 = [formatPaddingCharacters countByEnumeratingWithState:&v13 objects:v17 count:16];
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