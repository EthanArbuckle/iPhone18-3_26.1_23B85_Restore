@interface CACImportExportResult
- (CACImportExportResult)initWithError:(id)error title:(id)title message:(id)message;
- (void)displayAlertForViewController:(id)controller;
@end

@implementation CACImportExportResult

- (CACImportExportResult)initWithError:(id)error title:(id)title message:(id)message
{
  errorCopy = error;
  titleCopy = title;
  messageCopy = message;
  v11 = [(CACImportExportResult *)self init];
  v12 = v11;
  if (v11)
  {
    [(CACImportExportResult *)v11 setError:errorCopy];
    [(CACImportExportResult *)v12 setTitle:titleCopy];
    [(CACImportExportResult *)v12 setMessage:messageCopy];
  }

  return v12;
}

- (void)displayAlertForViewController:(id)controller
{
  controllerCopy = controller;
  v4 = MEMORY[0x277D75110];
  error = self->_error;
  if (error)
  {
    title = [(NSError *)self->_error localizedDescription];
  }

  else
  {
    title = self->_title;
  }

  v7 = [v4 alertControllerWithTitle:title message:self->_message preferredStyle:0];
  if (error)
  {
  }

  v8 = MEMORY[0x277D750F8];
  v9 = [CACLocaleUtilities localizedUIStringForKey:@"CommonStrings.OK"];
  v10 = [v8 actionWithTitle:v9 style:1 handler:&__block_literal_global_44];
  [v7 addAction:v10];

  [controllerCopy presentViewController:v7 animated:1 completion:0];
}

@end