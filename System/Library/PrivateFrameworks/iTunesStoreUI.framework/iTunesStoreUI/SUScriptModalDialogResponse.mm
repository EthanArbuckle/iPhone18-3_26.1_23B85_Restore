@interface SUScriptModalDialogResponse
- (void)dealloc;
@end

@implementation SUScriptModalDialogResponse

- (void)dealloc
{
  self->_textFieldValue = 0;
  v3.receiver = self;
  v3.super_class = SUScriptModalDialogResponse;
  [(SUScriptModalDialogResponse *)&v3 dealloc];
}

@end