@interface RTTUtteranceRequest
+ (id)utteranceRequestWithIndex:(unint64_t)index forString:(id)string inCellPath:(id)path call:(id)call;
- (NSIndexPath)cellIndexPath;
- (id)description;
@end

@implementation RTTUtteranceRequest

+ (id)utteranceRequestWithIndex:(unint64_t)index forString:(id)string inCellPath:(id)path call:(id)call
{
  callCopy = call;
  pathCopy = path;
  stringCopy = string;
  v12 = objc_alloc_init(RTTUtteranceRequest);
  [(RTTUtteranceRequest *)v12 setIndex:index];
  [(RTTUtteranceRequest *)v12 setString:stringCopy];

  [(RTTUtteranceRequest *)v12 setCellIndexPath:pathCopy];
  [(RTTUtteranceRequest *)v12 setCall:callCopy];

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v10.receiver = self;
  v10.super_class = RTTUtteranceRequest;
  v4 = [(RTTUtteranceRequest *)&v10 description];
  index = [(RTTUtteranceRequest *)self index];
  string = [(RTTUtteranceRequest *)self string];
  cellIndexPath = [(RTTUtteranceRequest *)self cellIndexPath];
  v8 = [v3 stringWithFormat:@"%@ [%ld]=%@ - %@", v4, index, string, cellIndexPath];

  return v8;
}

- (NSIndexPath)cellIndexPath
{
  WeakRetained = objc_loadWeakRetained(&self->_cellIndexPath);

  return WeakRetained;
}

@end