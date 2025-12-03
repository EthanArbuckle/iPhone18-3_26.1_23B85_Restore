@interface CSDCallHistoryController
- (CSDCallHistoryController)init;
- (void)allCallHistoryDeleted;
- (void)recentCallsDeleted:(id)deleted;
@end

@implementation CSDCallHistoryController

- (CSDCallHistoryController)init
{
  v3.receiver = self;
  v3.super_class = CSDCallHistoryController;
  return [(CSDCallHistoryController *)&v3 init];
}

- (void)recentCallsDeleted:(id)deleted
{
  deletedCopy = deleted;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = deletedCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Recent calls deleted: %@", &v9, 0xCu);
  }

  delegate = [(CSDCallHistoryController *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(CSDCallHistoryController *)self delegate];
    [delegate2 recentCallsDeleted:deletedCopy];
  }
}

- (void)allCallHistoryDeleted
{
  delegate = [(CSDCallHistoryController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(CSDCallHistoryController *)self delegate];
    [delegate2 allCallHistoryDeleted];
  }
}

@end