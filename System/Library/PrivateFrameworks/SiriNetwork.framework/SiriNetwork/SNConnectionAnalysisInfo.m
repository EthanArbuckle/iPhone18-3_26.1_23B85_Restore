@interface SNConnectionAnalysisInfo
- (SNConnectionAnalysisInfo)initWithConnectionURL:(id)a3 interfaceIndex:(int)a4 sendBufferSize:(id)a5 wwanPreferred:(BOOL)a6 connectionType:(id)a7 policyId:(id)a8;
@end

@implementation SNConnectionAnalysisInfo

- (SNConnectionAnalysisInfo)initWithConnectionURL:(id)a3 interfaceIndex:(int)a4 sendBufferSize:(id)a5 wwanPreferred:(BOOL)a6 connectionType:(id)a7 policyId:(id)a8
{
  v15 = a3;
  v16 = a5;
  v17 = a7;
  v18 = a8;
  v26.receiver = self;
  v26.super_class = SNConnectionAnalysisInfo;
  v19 = [(SNConnectionAnalysisInfo *)&v26 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_connectionURL, a3);
    v20->_interfaceIndex = a4;
    v21 = [v16 copy];
    sendBufferSize = v20->_sendBufferSize;
    v20->_sendBufferSize = v21;

    v20->_wwanPreferred = a6;
    objc_storeStrong(&v20->_connectionType, a7);
    v23 = [v18 copy];
    policyId = v20->_policyId;
    v20->_policyId = v23;
  }

  return v20;
}

@end