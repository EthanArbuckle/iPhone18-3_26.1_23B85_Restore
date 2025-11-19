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
  if ([a1 shouldUseObjectRepresentation])
  {
    v3 = [a1 preferredObjectType];
    v4 = [v3 conformsToClass:objc_opt_class()];

    if (v4)
    {
      v5 = objc_opt_new();
      v6 = [a1 name];
      [v5 setName:v6];

      v7 = MEMORY[0x277CE1E20];
LABEL_11:
      v20 = [*v7 identifier];
      [v5 setType:v20];

      [v2 setSpecialization:v5];
      goto LABEL_12;
    }

    v14 = [a1 preferredObjectType];
    v15 = [v14 conformsToClass:objc_opt_class()];

    if (!v15)
    {
      v16 = [a1 internalRepresentationType];
      if ([v16 conformsToClass:objc_opt_class()])
      {
      }

      else
      {
        v17 = [a1 internalRepresentationType];
        v18 = [v17 conformsToClass:objc_opt_class()];

        if (!v18)
        {
          goto LABEL_13;
        }
      }

      v5 = objc_opt_new();
      v19 = [a1 name];
      [v5 setName:v19];

      v7 = MEMORY[0x277CE1DB0];
      goto LABEL_11;
    }

    v5 = [a1 objectForClass:objc_opt_class()];
    [v2 setURL:v5];
  }

  else
  {
    v8 = [a1 preferredFileType];
    v5 = [a1 fileRepresentationForType:v8];

    v9 = objc_opt_new();
    v10 = [v5 wfName];
    [v9 setName:v10];

    v11 = [v5 wfType];
    v12 = [v11 utType];
    v13 = [v12 identifier];
    [v9 setType:v13];

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
  v6 = [a1 name];
  v7 = [v5 isEqualToString:*MEMORY[0x277D54738]];

  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ([a1 string], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "hasPrefix:", v6), v8, (v9 & 1) != 0))
  {
    v10 = &stru_288374A58;
  }

  else
  {
    v10 = v6;
  }

  return v10;
}

- (id)activityViewController:()UIActivityItemSource itemForActivityType:
{
  if ([a1 shouldUseObjectRepresentation])
  {
    v2 = [a1 preferredObjectType];
    v3 = [a1 objectForClass:{objc_msgSend(v2, "objectClass")}];
  }

  else
  {
    v4 = [a1 preferredFileType];
    v2 = [a1 fileRepresentationForType:v4];

    if ([v2 representationType])
    {
      [v2 fileURL];
    }

    else
    {
      [v2 data];
    }
    v3 = ;
  }

  v5 = v3;

  return v5;
}

- (id)activityViewController:()UIActivityItemSource dataTypeIdentifierForActivityType:
{
  if ([a1 shouldUseObjectRepresentation])
  {
    v2 = [a1 preferredObjectType];
    if ([v2 conformsToClass:objc_opt_class()])
    {
      v3 = MEMORY[0x277CE1E90];
LABEL_7:
      v4 = [*v3 identifier];
      goto LABEL_10;
    }

    if (([v2 conformsToClass:objc_opt_class()] & 1) != 0 || objc_msgSend(v2, "conformsToClass:", objc_opt_class()))
    {
      v3 = MEMORY[0x277CE1DB0];
      goto LABEL_7;
    }
  }

  v2 = [a1 preferredFileType];
  v4 = [v2 string];
LABEL_10:
  v5 = v4;

  return v5;
}

- (id)activityViewControllerPlaceholderItem:()UIActivityItemSource
{
  if ([a1 shouldUseObjectRepresentation])
  {
    v2 = [a1 preferredObjectType];
    v3 = [a1 objectForClass:{objc_msgSend(v2, "objectClass")}];
  }

  else
  {
    v3 = [MEMORY[0x277CBEA90] data];
  }

  return v3;
}

@end