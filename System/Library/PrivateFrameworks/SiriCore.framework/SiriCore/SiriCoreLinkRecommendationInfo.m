@interface SiriCoreLinkRecommendationInfo
- (SiriCoreLinkRecommendationInfo)initWithPreferences:(BOOL)a3 wifiPreference:(BOOL)a4 timeTaken:(double)a5 metrics:(id)a6;
- (SiriCoreLinkRecommendationInfo)initWithQueue:(id)a3;
- (void)fetchLinkMetrics:(id)a3;
- (void)resetLinkMetrics;
@end

@implementation SiriCoreLinkRecommendationInfo

- (void)fetchLinkMetrics:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3, 0);
  }
}

- (void)resetLinkMetrics
{
  linkRecommendationMetrics = self->_linkRecommendationMetrics;
  self->_timeTaken = 0.0;
  self->_linkRecommendationMetrics = 0;
  *&self->_btPreference = 1;
  MEMORY[0x2821F96F8]();
}

- (SiriCoreLinkRecommendationInfo)initWithQueue:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14.receiver = self;
  v14.super_class = SiriCoreLinkRecommendationInfo;
  v5 = [(SiriCoreLinkRecommendationInfo *)&v14 init];
  v6 = v5;
  if (v5)
  {
    *&v5->_btPreference = 0;
    v5->_timeTaken = 0.0;
    WRM_iRATInterfaceClass = getWRM_iRATInterfaceClass();
    if (WRM_iRATInterfaceClass)
    {
      v8 = objc_alloc_init(WRM_iRATInterfaceClass);
      iRATClient = v6->_iRATClient;
      v6->_iRATClient = v8;

      [(WRM_iRATInterface *)v6->_iRATClient registerClient:22 queue:v4];
      v10 = *MEMORY[0x277CEF0E0];
      if (os_log_type_enabled(*MEMORY[0x277CEF0E0], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v16 = "[SiriCoreLinkRecommendationInfo initWithQueue:]";
        v11 = "%s Using link recommendation";
LABEL_7:
        _os_log_impl(&dword_2669D1000, v10, OS_LOG_TYPE_DEFAULT, v11, buf, 0xCu);
      }
    }

    else
    {
      v10 = *MEMORY[0x277CEF0E0];
      if (os_log_type_enabled(*MEMORY[0x277CEF0E0], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v16 = "[SiriCoreLinkRecommendationInfo initWithQueue:]";
        v11 = "%s Unable to use link recommendation";
        goto LABEL_7;
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return v6;
}

- (SiriCoreLinkRecommendationInfo)initWithPreferences:(BOOL)a3 wifiPreference:(BOOL)a4 timeTaken:(double)a5 metrics:(id)a6
{
  v11 = a6;
  v15.receiver = self;
  v15.super_class = SiriCoreLinkRecommendationInfo;
  v12 = [(SiriCoreLinkRecommendationInfo *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_btPreference = a3;
    v12->_wifiPreference = a4;
    v12->_timeTaken = a5;
    objc_storeStrong(&v12->_linkRecommendationMetrics, a6);
  }

  return v13;
}

@end