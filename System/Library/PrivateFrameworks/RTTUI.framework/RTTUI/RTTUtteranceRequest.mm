@interface RTTUtteranceRequest
+ (id)utteranceRequestWithIndex:(unint64_t)a3 forString:(id)a4 inCellPath:(id)a5 call:(id)a6;
- (NSIndexPath)cellIndexPath;
- (id)description;
@end

@implementation RTTUtteranceRequest

+ (id)utteranceRequestWithIndex:(unint64_t)a3 forString:(id)a4 inCellPath:(id)a5 call:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = objc_alloc_init(RTTUtteranceRequest);
  [(RTTUtteranceRequest *)v12 setIndex:a3];
  [(RTTUtteranceRequest *)v12 setString:v11];

  [(RTTUtteranceRequest *)v12 setCellIndexPath:v10];
  [(RTTUtteranceRequest *)v12 setCall:v9];

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v10.receiver = self;
  v10.super_class = RTTUtteranceRequest;
  v4 = [(RTTUtteranceRequest *)&v10 description];
  v5 = [(RTTUtteranceRequest *)self index];
  v6 = [(RTTUtteranceRequest *)self string];
  v7 = [(RTTUtteranceRequest *)self cellIndexPath];
  v8 = [v3 stringWithFormat:@"%@ [%ld]=%@ - %@", v4, v5, v6, v7];

  return v8;
}

- (NSIndexPath)cellIndexPath
{
  WeakRetained = objc_loadWeakRetained(&self->_cellIndexPath);

  return WeakRetained;
}

@end