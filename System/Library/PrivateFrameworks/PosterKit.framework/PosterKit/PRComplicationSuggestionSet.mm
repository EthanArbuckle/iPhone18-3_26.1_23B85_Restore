@interface PRComplicationSuggestionSet
- (BOOL)isEqual:(id)equal;
- (PRComplicationSuggestionSet)initWithDescriptors:(id)descriptors localizedTitle:(id)title;
- (unint64_t)hash;
@end

@implementation PRComplicationSuggestionSet

- (PRComplicationSuggestionSet)initWithDescriptors:(id)descriptors localizedTitle:(id)title
{
  descriptorsCopy = descriptors;
  titleCopy = title;
  v14.receiver = self;
  v14.super_class = PRComplicationSuggestionSet;
  v9 = [(PRComplicationSuggestionSet *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_descriptors, descriptors);
    v11 = [titleCopy copy];
    localizedTitle = v10->_localizedTitle;
    v10->_localizedTitle = v11;
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  descriptors = [(PRComplicationSuggestionSet *)self descriptors];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __39__PRComplicationSuggestionSet_isEqual___block_invoke;
  v17[3] = &unk_1E78438D8;
  v7 = equalCopy;
  v18 = v7;
  v8 = [v5 appendObject:descriptors counterpart:v17];

  localizedTitle = [(PRComplicationSuggestionSet *)self localizedTitle];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __39__PRComplicationSuggestionSet_isEqual___block_invoke_2;
  v15[3] = &unk_1E78438D8;
  v10 = v7;
  v16 = v10;
  v11 = [v5 appendObject:localizedTitle counterpart:v15];

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
  descriptors = [(PRComplicationSuggestionSet *)self descriptors];
  v4 = [descriptors hash];
  localizedTitle = [(PRComplicationSuggestionSet *)self localizedTitle];
  v6 = [localizedTitle hash];

  return v6 ^ v4;
}

@end