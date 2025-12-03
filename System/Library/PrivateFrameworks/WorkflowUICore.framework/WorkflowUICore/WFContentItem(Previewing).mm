@interface WFContentItem(Previewing)
- (uint64_t)shouldUseObjectRepresentation;
- (void)prepareForPresentationWithCompletionHandler:()Previewing;
@end

@implementation WFContentItem(Previewing)

- (void)prepareForPresentationWithCompletionHandler:()Previewing
{
  v4 = a3;
  if ([self shouldUseObjectRepresentation])
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __73__WFContentItem_Previewing__prepareForPresentationWithCompletionHandler___block_invoke;
    v11[3] = &unk_279EF4F38;
    v5 = &v12;
    v12 = v4;
    v6 = v4;
    preferredObjectType = [self preferredObjectType];
    [self getObjectRepresentation:v11 forClass:{objc_msgSend(preferredObjectType, "objectClass")}];
  }

  else
  {
    v9 = MEMORY[0x277D85DD0];
    v5 = &v10;
    v10 = v4;
    v8 = v4;
    preferredObjectType = [self preferredFileType];
    [self getFileRepresentation:&v9 forType:preferredObjectType];
  }
}

- (uint64_t)shouldUseObjectRepresentation
{
  v2 = objc_opt_class();
  if (v2 == objc_opt_class())
  {
    return 0;
  }

  preferredObjectType = [self preferredObjectType];
  if ([preferredObjectType conformsToClass:objc_opt_class()] & 1) != 0 || (objc_msgSend(preferredObjectType, "conformsToClass:", objc_opt_class()))
  {
    v4 = 1;
  }

  else
  {
    internalRepresentationType = [self internalRepresentationType];
    if ([internalRepresentationType conformsToClass:objc_opt_class()])
    {
      v4 = 1;
    }

    else
    {
      internalRepresentationType2 = [self internalRepresentationType];
      v4 = [internalRepresentationType2 conformsToClass:objc_opt_class()];
    }
  }

  return v4;
}

@end