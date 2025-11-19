@interface VSAppDocumentControllerFactory
+ (id)appDocumentControllerForAppDocument:(id)a3 error:(id *)a4;
@end

@implementation VSAppDocumentControllerFactory

+ (id)appDocumentControllerForAppDocument:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [v5 templateElement];
  v7 = [v6 vs_elementType];

  if (v7 <= 162)
  {
    if (v7 == 161)
    {
      v8 = VSCredentialEntryAppDocumentController;
    }

    else
    {
      if (v7 != 162)
      {
        goto LABEL_17;
      }

      v8 = VSAutoAuthenticationAppDocumentController;
    }

LABEL_12:
    v9 = [[v8 alloc] initWithAppDocument:v5];
    v10 = 0;
    if (!a4)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  switch(v7)
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
  if (a4)
  {
LABEL_13:
    v10 = v10;
    *a4 = v10;
  }

LABEL_14:

  return v9;
}

@end