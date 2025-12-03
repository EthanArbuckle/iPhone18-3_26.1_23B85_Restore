@interface VSAppDocumentControllerFactory
+ (id)appDocumentControllerForAppDocument:(id)document error:(id *)error;
@end

@implementation VSAppDocumentControllerFactory

+ (id)appDocumentControllerForAppDocument:(id)document error:(id *)error
{
  documentCopy = document;
  templateElement = [documentCopy templateElement];
  vs_elementType = [templateElement vs_elementType];

  if (vs_elementType <= 162)
  {
    if (vs_elementType == 161)
    {
      v8 = VSCredentialEntryAppDocumentController;
    }

    else
    {
      if (vs_elementType != 162)
      {
        goto LABEL_17;
      }

      v8 = VSAutoAuthenticationAppDocumentController;
    }

LABEL_12:
    v9 = [[v8 alloc] initWithAppDocument:documentCopy];
    v10 = 0;
    if (!error)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  switch(vs_elementType)
  {
    case 163:
      v8 = VSWebAuthenticationAppDocumentController;
      goto LABEL_12;
    case 164:
      v8 = VSOnscreenCodeAuthenticationAppDocumentController;
      goto LABEL_12;
    case 165:
      v8 = VSTwoFactorEntryAppDocumentController;
      goto LABEL_12;
  }

LABEL_17:
  v12 = VSErrorLogObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    [VSAppDocumentControllerFactory appDocumentControllerForAppDocument:v12 error:?];
  }

  v10 = VSPrivateError();
  v9 = 0;
  if (error)
  {
LABEL_13:
    v10 = v10;
    *error = v10;
  }

LABEL_14:

  return v9;
}

@end