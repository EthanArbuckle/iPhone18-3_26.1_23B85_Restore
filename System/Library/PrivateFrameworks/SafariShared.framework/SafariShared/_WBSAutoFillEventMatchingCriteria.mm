@interface _WBSAutoFillEventMatchingCriteria
- (_WBSAutoFillEventMatchingCriteria)initWithUsername:(id)username timeInterval:(double)interval tabID:(id)d currentURL:(id)l shouldAllowPrivateTabs:(BOOL)tabs shouldRemoveMatchingEvent:(BOOL)event shouldIncludeExternalCredentialEvents:(BOOL)events onlyEventsWhenPasswordWasFilled:(BOOL)self0;
@end

@implementation _WBSAutoFillEventMatchingCriteria

- (_WBSAutoFillEventMatchingCriteria)initWithUsername:(id)username timeInterval:(double)interval tabID:(id)d currentURL:(id)l shouldAllowPrivateTabs:(BOOL)tabs shouldRemoveMatchingEvent:(BOOL)event shouldIncludeExternalCredentialEvents:(BOOL)events onlyEventsWhenPasswordWasFilled:(BOOL)self0
{
  usernameCopy = username;
  dCopy = d;
  lCopy = l;
  v25.receiver = self;
  v25.super_class = _WBSAutoFillEventMatchingCriteria;
  v21 = [(_WBSAutoFillEventMatchingCriteria *)&v25 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_username, username);
    v22->_timeInterval = interval;
    objc_storeStrong(&v22->_tabID, d);
    objc_storeStrong(&v22->_currentURL, l);
    v22->_shouldAllowPrivateTabs = tabs;
    v22->_shouldRemoveMatchingEvent = event;
    v22->_shouldIncludeExternalCredentialEvents = events;
    v22->_onlyEventsWhenPasswordWasFilled = filled;
    v23 = v22;
  }

  return v22;
}

@end