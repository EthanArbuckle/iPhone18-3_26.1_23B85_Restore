@interface SHSheetActivityPerformerResult
- (SHSheetActivityPerformerResult)initWithActivity:(id)a3 completedState:(int64_t)a4 returnedItems:(id)a5 error:(id)a6;
- (id)description;
@end

@implementation SHSheetActivityPerformerResult

- (SHSheetActivityPerformerResult)initWithActivity:(id)a3 completedState:(int64_t)a4 returnedItems:(id)a5 error:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v19.receiver = self;
  v19.super_class = SHSheetActivityPerformerResult;
  v14 = [(SHSheetActivityPerformerResult *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_activity, a3);
    v15->_completedState = a4;
    v16 = [v12 copy];
    returnedItems = v15->_returnedItems;
    v15->_returnedItems = v16;

    objc_storeStrong(&v15->_error, a6);
  }

  return v15;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = SHSheetActivityPerformerResult;
  v4 = [(SHSheetActivityPerformerResult *)&v11 description];
  v5 = [(SHSheetActivityPerformerResult *)self activity];
  v6 = SHSheetActivityPerformerStateDescription([(SHSheetActivityPerformerResult *)self completedState]);
  v7 = [(SHSheetActivityPerformerResult *)self returnedItems];
  v8 = [(SHSheetActivityPerformerResult *)self error];
  v9 = [v3 stringWithFormat:@"<%@ activity:%@ completedState:%@ returnedItems:%@ error:%@>", v4, v5, v6, v7, v8];

  return v9;
}

@end