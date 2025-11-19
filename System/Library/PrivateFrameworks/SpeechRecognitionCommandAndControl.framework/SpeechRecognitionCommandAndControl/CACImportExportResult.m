@interface CACImportExportResult
- (CACImportExportResult)initWithError:(id)a3 title:(id)a4 message:(id)a5;
- (void)displayAlertForViewController:(id)a3;
@end

@implementation CACImportExportResult

- (CACImportExportResult)initWithError:(id)a3 title:(id)a4 message:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CACImportExportResult *)self init];
  v12 = v11;
  if (v11)
  {
    [(CACImportExportResult *)v11 setError:v8];
    [(CACImportExportResult *)v12 setTitle:v9];
    [(CACImportExportResult *)v12 setMessage:v10];
  }

  return v12;
}

- (void)displayAlertForViewController:(id)a3
{
  v11 = a3;
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

  [v11 presentViewController:v7 animated:1 completion:0];
}

@end