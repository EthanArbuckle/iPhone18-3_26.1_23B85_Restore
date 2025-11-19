@interface CSDCallHistoryController
- (CSDCallHistoryController)init;
- (void)allCallHistoryDeleted;
- (void)recentCallsDeleted:(id)a3;
@end

@implementation CSDCallHistoryController

- (CSDCallHistoryController)init
{
  v3.receiver = self;
  v3.super_class = CSDCallHistoryController;
  return [(CSDCallHistoryController *)&v3 init];
}

- (void)recentCallsDeleted:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Recent calls deleted: %@", &v9, 0xCu);
  }

  v6 = [(CSDCallHistoryController *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(CSDCallHistoryController *)self delegate];
    [v8 recentCallsDeleted:v4];
  }
}

- (void)allCallHistoryDeleted
{
  v3 = [(CSDCallHistoryController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(CSDCallHistoryController *)self delegate];
    [v5 allCallHistoryDeleted];
  }
}

@end