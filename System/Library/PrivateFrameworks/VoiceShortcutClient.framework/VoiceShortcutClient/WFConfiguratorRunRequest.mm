@interface WFConfiguratorRunRequest
- (WFConfiguratorRunRequest)initWithInputStrings:(id)strings presentationMode:(unint64_t)mode;
@end

@implementation WFConfiguratorRunRequest

- (WFConfiguratorRunRequest)initWithInputStrings:(id)strings presentationMode:(unint64_t)mode
{
  stringsCopy = strings;
  if ([stringsCopy count])
  {
    v7 = [stringsCopy if_compactMap:&__block_literal_global_5218];
    v14 = 0;
    v15 = &v14;
    v16 = 0x2050000000;
    v8 = getWFContentCollectionClass_softClass_5219;
    v17 = getWFContentCollectionClass_softClass_5219;
    if (!getWFContentCollectionClass_softClass_5219)
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __getWFContentCollectionClass_block_invoke_5220;
      v13[3] = &unk_1E7B02C60;
      v13[4] = &v14;
      __getWFContentCollectionClass_block_invoke_5220(v13);
      v8 = v15[3];
    }

    v9 = v8;
    _Block_object_dispose(&v14, 8);
    v10 = [v8 collectionWithItems:v7];
  }

  else
  {
    v10 = 0;
  }

  v11 = [(WFWorkflowRunRequest *)self initWithInput:v10 presentationMode:mode];

  return v11;
}

id __66__WFConfiguratorRunRequest_initWithInputStrings_presentationMode___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2050000000;
  v3 = getWFContentItemClass_softClass;
  v11 = getWFContentItemClass_softClass;
  if (!getWFContentItemClass_softClass)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __getWFContentItemClass_block_invoke;
    v7[3] = &unk_1E7B02C60;
    v7[4] = &v8;
    __getWFContentItemClass_block_invoke(v7);
    v3 = v9[3];
  }

  v4 = v3;
  _Block_object_dispose(&v8, 8);
  v5 = [v3 itemWithObject:v2];

  return v5;
}

@end