@interface _WBSAutoFillEventMatchingCriteria
- (_WBSAutoFillEventMatchingCriteria)initWithUsername:(id)a3 timeInterval:(double)a4 tabID:(id)a5 currentURL:(id)a6 shouldAllowPrivateTabs:(BOOL)a7 shouldRemoveMatchingEvent:(BOOL)a8 shouldIncludeExternalCredentialEvents:(BOOL)a9 onlyEventsWhenPasswordWasFilled:(BOOL)a10;
@end

@implementation _WBSAutoFillEventMatchingCriteria

- (_WBSAutoFillEventMatchingCriteria)initWithUsername:(id)a3 timeInterval:(double)a4 tabID:(id)a5 currentURL:(id)a6 shouldAllowPrivateTabs:(BOOL)a7 shouldRemoveMatchingEvent:(BOOL)a8 shouldIncludeExternalCredentialEvents:(BOOL)a9 onlyEventsWhenPasswordWasFilled:(BOOL)a10
{
  v18 = a3;
  v19 = a5;
  v20 = a6;
  v25.receiver = self;
  v25.super_class = _WBSAutoFillEventMatchingCriteria;
  v21 = [(_WBSAutoFillEventMatchingCriteria *)&v25 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_username, a3);
    v22->_timeInterval = a4;
    objc_storeStrong(&v22->_tabID, a5);
    objc_storeStrong(&v22->_currentURL, a6);
    v22->_shouldAllowPrivateTabs = a7;
    v22->_shouldRemoveMatchingEvent = a8;
    v22->_shouldIncludeExternalCredentialEvents = a9;
    v22->_onlyEventsWhenPasswordWasFilled = a10;
    v23 = v22;
  }

  return v22;
}

@end