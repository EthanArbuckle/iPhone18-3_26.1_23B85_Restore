@interface VSAppDescription
- (BOOL)isEqual:(id)a3;
- (NSString)shortenedDisplayName;
- (VSAppDescription)init;
- (VSAppDescription)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)iconURLForSize:(CGSize)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VSAppDescription

- (VSAppDescription)init
{
  v5.receiver = self;
  v5.super_class = VSAppDescription;
  v2 = [(VSAppDescription *)&v5 init];
  if (v2)
  {
    v3 = VSAppDescriptionValueType();
    VSValueTypeInit();
  }

  return v2;
}

- (VSAppDescription)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = VSAppDescription;
  v5 = [(VSAppDescription *)&v8 init];
  if (v5)
  {
    v6 = VSAppDescriptionValueType();
    VSValueTypeInitWithCoder();
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v3 = a3;
  v4 = VSAppDescriptionValueType();
  VSValueTypeEncodeWithCoder();
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = VSAppDescriptionValueType();
  v4 = VSValueTypeCopyWithZone();

  return v4;
}

- (unint64_t)hash
{
  v2 = VSAppDescriptionValueType();
  v3 = VSValueTypeHash();

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v3 = a3;
  v4 = VSAppDescriptionValueType();
  IsEqual = VSValueTypeIsEqual();

  return IsEqual;
}

- (id)description
{
  v2 = VSAppDescriptionValueType();
  v3 = VSValueTypeDescription();

  return v3;
}

- (id)iconURLForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(VSAppDescription *)self artworkURLTemplate];
  v6 = [v5 stringByReplacingOccurrencesOfString:@"{f}" withString:@"png"];

  v7 = [MEMORY[0x277CCABB0] numberWithDouble:width];
  v8 = [v7 stringValue];
  v9 = [v6 stringByReplacingOccurrencesOfString:@"{w}" withString:v8];

  v10 = [MEMORY[0x277CCABB0] numberWithDouble:height];
  v11 = [v10 stringValue];
  v12 = [v9 stringByReplacingOccurrencesOfString:@"{h}" withString:v11];

  v13 = [v12 stringByReplacingOccurrencesOfString:@"{c}" withString:&stru_2880B8BB0];

  if (v13)
  {
    v14 = [MEMORY[0x277CBEBC0] URLWithString:v13];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (NSString)shortenedDisplayName
{
  v41 = *MEMORY[0x277D85DE8];
  v2 = [(VSAppDescription *)self displayName];
  if (v2)
  {
    v3 = v2;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v4 = [&unk_2880D2710 countByEnumeratingWithState:&v34 objects:v40 count:16];
    v5 = v3;
    if (v4)
    {
      v6 = v4;
      v7 = *v35;
      v5 = v3;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v35 != v7)
          {
            objc_enumerationMutation(&unk_2880D2710);
          }

          v9 = [v5 rangeOfString:*(*(&v34 + 1) + 8 * i)];
          if (v9 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v10 = [v5 substringToIndex:v9];

            v5 = v10;
          }
        }

        v6 = [&unk_2880D2710 countByEnumeratingWithState:&v34 objects:v40 count:16];
      }

      while (v6);
    }

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v11 = [&unk_2880D2728 countByEnumeratingWithState:&v30 objects:v39 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v31;
      do
      {
        for (j = 0; j != v12; ++j)
        {
          if (*v31 != v13)
          {
            objc_enumerationMutation(&unk_2880D2728);
          }

          v15 = *(*(&v30 + 1) + 8 * j);
          if ([v5 hasPrefix:v15])
          {
            v16 = [v5 substringFromIndex:{objc_msgSend(v15, "length")}];

            v5 = v16;
          }
        }

        v12 = [&unk_2880D2728 countByEnumeratingWithState:&v30 objects:v39 count:16];
      }

      while (v12);
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v17 = [&unk_2880D2740 countByEnumeratingWithState:&v26 objects:v38 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v27;
      do
      {
        for (k = 0; k != v18; ++k)
        {
          if (*v27 != v19)
          {
            objc_enumerationMutation(&unk_2880D2740);
          }

          v21 = *(*(&v26 + 1) + 8 * k);
          if ([v5 hasSuffix:v21])
          {
            v22 = [v5 substringToIndex:{objc_msgSend(v5, "length") - objc_msgSend(v21, "length")}];

            v5 = v22;
          }
        }

        v18 = [&unk_2880D2740 countByEnumeratingWithState:&v26 objects:v38 count:16];
      }

      while (v18);
    }

    v23 = [v5 copy];
  }

  else
  {
    v23 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

@end