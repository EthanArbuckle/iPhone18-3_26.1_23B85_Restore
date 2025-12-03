@interface DaemonDialogOperation
- (BOOL)displaysOnLockscreen;
- (DaemonDialogOperation)initWithDialog:(id)dialog;
- (ISDialog)dialog;
- (SSVDialogResponse)dialogResponse;
- (id)outputBlock;
- (void)dealloc;
- (void)run;
- (void)setDisplaysOnLockscreen:(BOOL)lockscreen;
- (void)setOutputBlock:(id)block;
@end

@implementation DaemonDialogOperation

- (DaemonDialogOperation)initWithDialog:(id)dialog
{
  v6.receiver = self;
  v6.super_class = DaemonDialogOperation;
  v4 = [(DaemonDialogOperation *)&v6 init];
  if (v4)
  {
    v4->_dialog = dialog;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = DaemonDialogOperation;
  [(DaemonDialogOperation *)&v3 dealloc];
}

- (ISDialog)dialog
{
  [(DaemonDialogOperation *)self lock];
  v3 = self->_dialog;
  [(DaemonDialogOperation *)self unlock];

  return v3;
}

- (SSVDialogResponse)dialogResponse
{
  [(DaemonDialogOperation *)self lock];
  v3 = [(SSVDialogResponse *)self->_dialogResponse copy];
  [(DaemonDialogOperation *)self unlock];

  return v3;
}

- (BOOL)displaysOnLockscreen
{
  [(DaemonDialogOperation *)self lock];
  displaysOnLockscreen = self->_displaysOnLockscreen;
  [(DaemonDialogOperation *)self unlock];
  return displaysOnLockscreen;
}

- (id)outputBlock
{
  [(DaemonDialogOperation *)self lock];
  v3 = self->_outputBlock;
  [(DaemonDialogOperation *)self unlock];

  return v3;
}

- (void)setDisplaysOnLockscreen:(BOOL)lockscreen
{
  [(DaemonDialogOperation *)self lock];
  self->_displaysOnLockscreen = lockscreen;

  [(DaemonDialogOperation *)self unlock];
}

- (void)setOutputBlock:(id)block
{
  [(DaemonDialogOperation *)self lock];
  outputBlock = self->_outputBlock;
  if (outputBlock != block)
  {

    self->_outputBlock = [block copy];
  }

  [(DaemonDialogOperation *)self unlock];
}

- (void)run
{
  v8 = 0;
  [(ISDialog *)self->_dialog setShouldDisplayAsTopMost:[(DaemonDialogOperation *)self displaysOnLockscreen]];
  [(ISDialog *)self->_dialog setDisplaysOnLockscreen:[(DaemonDialogOperation *)self displaysOnLockscreen]];
  v3 = objc_alloc_init(ISDialogOperation);
  [v3 setDialog:self->_dialog];
  [v3 setPerformDefaultActions:0];
  [(DaemonDialogOperation *)self runSubOperation:v3 returningError:&v8];
  selectedButton = [v3 selectedButton];
  if (!selectedButton)
  {
    outputBlock = [(DaemonDialogOperation *)self outputBlock];
    v6 = 0;
    if (!outputBlock)
    {
      goto LABEL_6;
    }

LABEL_5:
    outputBlock[2](outputBlock, v6, v8);
    [(DaemonDialogOperation *)self setOutputBlock:0];
    goto LABEL_6;
  }

  v5 = selectedButton;
  v6 = objc_alloc_init(SSVDialogResponse);
  [v6 setSelectedButtonIndex:{objc_msgSend(-[ISDialog buttons](self->_dialog, "buttons"), "indexOfObject:", v5)}];
  [v6 setTextFieldValues:{objc_msgSend(v3, "textFieldValues")}];
  outputBlock = [(DaemonDialogOperation *)self outputBlock];
  if (outputBlock)
  {
    goto LABEL_5;
  }

  [v5 performDefaultActionForDialog:self->_dialog];
LABEL_6:
  [(DaemonDialogOperation *)self lock];
  self->_dialogResponse = v6;
  [(DaemonDialogOperation *)self unlock];
  [(DaemonDialogOperation *)self setError:v8];
  [(DaemonDialogOperation *)self setSuccess:v6 != 0];
}

@end