@interface WFContentItem(UIActivityItemSource)
- (__CFString)activityViewController:()UIActivityItemSource subjectForActivityType:;
- (id)activityViewController:()UIActivityItemSource dataTypeIdentifierForActivityType:;
- (id)activityViewController:()UIActivityItemSource itemForActivityType:;
- (id)activityViewControllerLinkMetadata:()UIActivityItemSource;
- (id)activityViewControllerPlaceholderItem:()UIActivityItemSource;
@end

@implementation WFContentItem(UIActivityItemSource)

- (id)activityViewControllerLinkMetadata:()UIActivityItemSource
{
  v2 = objc_opt_new();
  if ([self shouldUseObjectRepresentation])
  {
    preferredObjectType = [self preferredObjectType];
    v4 = [preferredObjectType conformsToClass:objc_opt_class()];

    if (v4)
    {
      v5 = objc_opt_new();
      name = [self name];
      [v5 setName:name];

      v7 = MEMORY[0x277CE1E20];
LABEL_11:
      identifier = [*v7 identifier];
      [v5 setType:identifier];

      [v2 setSpecialization:v5];
      goto LABEL_12;
    }

    preferredObjectType2 = [self preferredObjectType];
    v15 = [preferredObjectType2 conformsToClass:objc_opt_class()];

    if (!v15)
    {
      internalRepresentationType = [self internalRepresentationType];
      if ([internalRepresentationType conformsToClass:objc_opt_class()])
      {
      }

      else
      {
        internalRepresentationType2 = [self internalRepresentationType];
        v18 = [internalRepresentationType2 conformsToClass:objc_opt_class()];

        if (!v18)
        {
          goto LABEL_13;
        }
      }

      v5 = objc_opt_new();
      name2 = [self name];
      [v5 setName:name2];

      v7 = MEMORY[0x277CE1DB0];
      goto LABEL_11;
    }

    v5 = [self objectForClass:objc_opt_class()];
    [v2 setURL:v5];
  }

  else
  {
    preferredFileType = [self preferredFileType];
    v5 = [self fileRepresentationForType:preferredFileType];

    v9 = objc_opt_new();
    wfName = [v5 wfName];
    [v9 setName:wfName];

    wfType = [v5 wfType];
    utType = [wfType utType];
    identifier2 = [utType identifier];
    [v9 setType:identifier2];

    [v9 setSize:{objc_msgSend(v5, "fileSize")}];
    [v2 setSpecialization:v9];
  }

LABEL_12:

LABEL_13:

  return v2;
}

- (__CFString)activityViewController:()UIActivityItemSource subjectForActivityType:
{
  v5 = a4;
  name = [self name];
  v7 = [v5 isEqualToString:*MEMORY[0x277D54738]];

  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ([self string], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "hasPrefix:", name), v8, (v9 & 1) != 0))
  {
    v10 = &stru_288374A58;
  }

  else
  {
    v10 = name;
  }

  return v10;
}

- (id)activityViewController:()UIActivityItemSource itemForActivityType:
{
  if ([self shouldUseObjectRepresentation])
  {
    preferredObjectType = [self preferredObjectType];
    v3 = [self objectForClass:{objc_msgSend(preferredObjectType, "objectClass")}];
  }

  else
  {
    preferredFileType = [self preferredFileType];
    preferredObjectType = [self fileRepresentationForType:preferredFileType];

    if ([preferredObjectType representationType])
    {
      [preferredObjectType fileURL];
    }

    else
    {
      [preferredObjectType data];
    }
    v3 = ;
  }

  v5 = v3;

  return v5;
}

- (id)activityViewController:()UIActivityItemSource dataTypeIdentifierForActivityType:
{
  if ([self shouldUseObjectRepresentation])
  {
    preferredObjectType = [self preferredObjectType];
    if ([preferredObjectType conformsToClass:objc_opt_class()])
    {
      v3 = MEMORY[0x277CE1E90];
LABEL_7:
      identifier = [*v3 identifier];
      goto LABEL_10;
    }

    if (([preferredObjectType conformsToClass:objc_opt_class()] & 1) != 0 || objc_msgSend(preferredObjectType, "conformsToClass:", objc_opt_class()))
    {
      v3 = MEMORY[0x277CE1DB0];
      goto LABEL_7;
    }
  }

  preferredObjectType = [self preferredFileType];
  identifier = [preferredObjectType string];
LABEL_10:
  v5 = identifier;

  return v5;
}

- (id)activityViewControllerPlaceholderItem:()UIActivityItemSource
{
  if ([self shouldUseObjectRepresentation])
  {
    preferredObjectType = [self preferredObjectType];
    data = [self objectForClass:{objc_msgSend(preferredObjectType, "objectClass")}];
  }

  else
  {
    data = [MEMORY[0x277CBEA90] data];
  }

  return data;
}

@end