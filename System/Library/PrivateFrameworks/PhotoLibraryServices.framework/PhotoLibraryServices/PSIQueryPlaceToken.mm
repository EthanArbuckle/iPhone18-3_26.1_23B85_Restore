@interface PSIQueryPlaceToken
- (PSIQueryPlaceToken)initWithText:(id)a3 locationNameByCategory:(id)a4;
@end

@implementation PSIQueryPlaceToken

- (PSIQueryPlaceToken)initWithText:(id)a3 locationNameByCategory:(id)a4
{
  v5 = PLSearchBackendQueryGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_FAULT, "This class is not supported. Please remove usage of deprecated Photos IPI.", v7, 2u);
  }

  return [(PSIQueryPlaceToken *)self init];
}

@end