@interface PRComplicationSuggestionSet
- (BOOL)isEqual:(id)a3;
- (PRComplicationSuggestionSet)initWithDescriptors:(id)a3 localizedTitle:(id)a4;
- (unint64_t)hash;
@end

@implementation PRComplicationSuggestionSet

- (PRComplicationSuggestionSet)initWithDescriptors:(id)a3 localizedTitle:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = PRComplicationSuggestionSet;
  v9 = [(PRComplicationSuggestionSet *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_descriptors, a3);
    v11 = [v8 copy];
    localizedTitle = v10->_localizedTitle;
    v10->_localizedTitle = v11;
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  v6 = [(PRComplicationSuggestionSet *)self descriptors];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __39__PRComplicationSuggestionSet_isEqual___block_invoke;
  v17[3] = &unk_1E78438D8;
  v7 = v4;
  v18 = v7;
  v8 = [v5 appendObject:v6 counterpart:v17];

  v9 = [(PRComplicationSuggestionSet *)self localizedTitle];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __39__PRComplicationSuggestionSet_isEqual___block_invoke_2;
  v15[3] = &unk_1E78438D8;
  v10 = v7;
  v16 = v10;
  v11 = [v5 appendObject:v9 counterpart:v15];

  if ([v5 isEqual])
  {
    v14.receiver = self;
    v14.super_class = PRComplicationSuggestionSet;
    v12 = [(PRComplicationSuggestionSet *)&v14 isEqual:v10];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (unint64_t)hash
{
  v3 = [(PRComplicationSuggestionSet *)self descriptors];
  v4 = [v3 hash];
  v5 = [(PRComplicationSuggestionSet *)self localizedTitle];
  v6 = [v5 hash];

  return v6 ^ v4;
}

@end