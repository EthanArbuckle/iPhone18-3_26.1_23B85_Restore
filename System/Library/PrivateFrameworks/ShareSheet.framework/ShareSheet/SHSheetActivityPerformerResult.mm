@interface SHSheetActivityPerformerResult
- (SHSheetActivityPerformerResult)initWithActivity:(id)activity completedState:(int64_t)state returnedItems:(id)items error:(id)error;
- (id)description;
@end

@implementation SHSheetActivityPerformerResult

- (SHSheetActivityPerformerResult)initWithActivity:(id)activity completedState:(int64_t)state returnedItems:(id)items error:(id)error
{
  activityCopy = activity;
  itemsCopy = items;
  errorCopy = error;
  v19.receiver = self;
  v19.super_class = SHSheetActivityPerformerResult;
  v14 = [(SHSheetActivityPerformerResult *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_activity, activity);
    v15->_completedState = state;
    v16 = [itemsCopy copy];
    returnedItems = v15->_returnedItems;
    v15->_returnedItems = v16;

    objc_storeStrong(&v15->_error, error);
  }

  return v15;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = SHSheetActivityPerformerResult;
  v4 = [(SHSheetActivityPerformerResult *)&v11 description];
  activity = [(SHSheetActivityPerformerResult *)self activity];
  v6 = SHSheetActivityPerformerStateDescription([(SHSheetActivityPerformerResult *)self completedState]);
  returnedItems = [(SHSheetActivityPerformerResult *)self returnedItems];
  error = [(SHSheetActivityPerformerResult *)self error];
  v9 = [v3 stringWithFormat:@"<%@ activity:%@ completedState:%@ returnedItems:%@ error:%@>", v4, activity, v6, returnedItems, error];

  return v9;
}

@end