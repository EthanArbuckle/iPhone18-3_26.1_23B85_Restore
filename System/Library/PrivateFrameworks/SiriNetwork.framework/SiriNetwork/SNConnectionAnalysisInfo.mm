@interface SNConnectionAnalysisInfo
- (SNConnectionAnalysisInfo)initWithConnectionURL:(id)l interfaceIndex:(int)index sendBufferSize:(id)size wwanPreferred:(BOOL)preferred connectionType:(id)type policyId:(id)id;
@end

@implementation SNConnectionAnalysisInfo

- (SNConnectionAnalysisInfo)initWithConnectionURL:(id)l interfaceIndex:(int)index sendBufferSize:(id)size wwanPreferred:(BOOL)preferred connectionType:(id)type policyId:(id)id
{
  lCopy = l;
  sizeCopy = size;
  typeCopy = type;
  idCopy = id;
  v26.receiver = self;
  v26.super_class = SNConnectionAnalysisInfo;
  v19 = [(SNConnectionAnalysisInfo *)&v26 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_connectionURL, l);
    v20->_interfaceIndex = index;
    v21 = [sizeCopy copy];
    sendBufferSize = v20->_sendBufferSize;
    v20->_sendBufferSize = v21;

    v20->_wwanPreferred = preferred;
    objc_storeStrong(&v20->_connectionType, type);
    v23 = [idCopy copy];
    policyId = v20->_policyId;
    v20->_policyId = v23;
  }

  return v20;
}

@end