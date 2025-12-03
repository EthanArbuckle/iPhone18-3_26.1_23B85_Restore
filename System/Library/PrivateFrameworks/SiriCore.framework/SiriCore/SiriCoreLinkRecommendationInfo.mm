@interface SiriCoreLinkRecommendationInfo
- (SiriCoreLinkRecommendationInfo)initWithPreferences:(BOOL)preferences wifiPreference:(BOOL)preference timeTaken:(double)taken metrics:(id)metrics;
- (SiriCoreLinkRecommendationInfo)initWithQueue:(id)queue;
- (void)fetchLinkMetrics:(id)metrics;
- (void)resetLinkMetrics;
@end

@implementation SiriCoreLinkRecommendationInfo

- (void)fetchLinkMetrics:(id)metrics
{
  if (metrics)
  {
    (*(metrics + 2))(metrics, 0);
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

- (SiriCoreLinkRecommendationInfo)initWithQueue:(id)queue
{
  v17 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
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

      [(WRM_iRATInterface *)v6->_iRATClient registerClient:22 queue:queueCopy];
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

- (SiriCoreLinkRecommendationInfo)initWithPreferences:(BOOL)preferences wifiPreference:(BOOL)preference timeTaken:(double)taken metrics:(id)metrics
{
  metricsCopy = metrics;
  v15.receiver = self;
  v15.super_class = SiriCoreLinkRecommendationInfo;
  v12 = [(SiriCoreLinkRecommendationInfo *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_btPreference = preferences;
    v12->_wifiPreference = preference;
    v12->_timeTaken = taken;
    objc_storeStrong(&v12->_linkRecommendationMetrics, metrics);
  }

  return v13;
}

@end