@interface TUProxyRecentCall
- (BOOL)mostRecentCallWasMissed;
- (CNContact)backingContact;
- (NSArray)handles;
- (NSArray)idsCanonicalDestinations;
- (NSString)backingContactId;
- (NSString)backingContactIdentifier;
- (NSString)destinationId;
- (NSString)displayName;
- (NSString)mostRecentCallInfo;
- (TUProxyRecentCall)init;
- (TUProxyRecentCall)initWithRecentCall:(id)call;
- (TUSearchController)searchController;
- (id)forwardingTargetForSelector:(SEL)selector;
- (int64_t)mostRecentCallType;
- (void)backingContact;
@end

@implementation TUProxyRecentCall

- (TUProxyRecentCall)initWithRecentCall:(id)call
{
  callCopy = call;
  v9.receiver = self;
  v9.super_class = TUProxyRecentCall;
  v6 = [(TUProxyRecentCall *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_recentCall, call);
  }

  return v7;
}

- (TUProxyRecentCall)init
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[TUProxyRecentCall init]"];
  v6 = [v4 stringWithFormat:@"Don't call %@, call designated initializer instead.", v5];
  NSLog(&cfstr_TuassertionFai.isa, v6);

  if (_TUAssertShouldCrashApplication())
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[TUProxyRecentCall init]"];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TUProxyRecentCall.m" lineNumber:50 description:{@"Don't call %@, call designated initializer instead.", v8}];
  }

  return 0;
}

- (NSString)mostRecentCallInfo
{
  mostRecentCallType = [(TUProxyRecentCall *)self mostRecentCallType];
  if (mostRecentCallType - 2 < 2)
  {
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    callerIdSubStringForDisplay = [mainBundle localizedStringForKey:@"FaceTime" value:&stru_1F098C218 table:0];
    goto LABEL_5;
  }

  if (mostRecentCallType <= 1)
  {
    mainBundle = [(TUProxyRecentCall *)self recentCall];
    callerIdSubStringForDisplay = [mainBundle callerIdSubStringForDisplay];
LABEL_5:
    v6 = callerIdSubStringForDisplay;

    goto LABEL_6;
  }

  v6 = 0;
LABEL_6:

  return v6;
}

- (id)forwardingTargetForSelector:(SEL)selector
{
  if (sel_callerId == selector || sel_isoCountryCode == selector)
  {
    recentCall = [(TUProxyRecentCall *)self recentCall];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = TUProxyRecentCall;
    recentCall = [(TUProxyRecentCall *)&v6 forwardingTargetForSelector:?];
  }

  return recentCall;
}

- (NSString)displayName
{
  backingContact = [(TUProxyRecentCall *)self backingContact];
  displayName = [backingContact displayName];

  if ([displayName length])
  {
    v5 = displayName;
    goto LABEL_8;
  }

  recentCall = [(TUProxyRecentCall *)self recentCall];
  callerIdForDisplay = [recentCall callerIdForDisplay];
  v8 = [callerIdForDisplay length];

  recentCall2 = [(TUProxyRecentCall *)self recentCall];
  recentCall3 = recentCall2;
  if (v8)
  {
    callerIdForDisplay2 = [recentCall2 callerIdForDisplay];
LABEL_7:
    v5 = callerIdForDisplay2;

    goto LABEL_8;
  }

  callerNameForDisplay = [recentCall2 callerNameForDisplay];
  v13 = [callerNameForDisplay length];

  if (v13)
  {
    recentCall3 = [(TUProxyRecentCall *)self recentCall];
    callerIdForDisplay2 = [recentCall3 callerNameForDisplay];
    goto LABEL_7;
  }

  v5 = 0;
LABEL_8:

  return v5;
}

- (CNContact)backingContact
{
  recentCall = [(TUProxyRecentCall *)self recentCall];
  contactIdentifier = [recentCall contactIdentifier];

  if (!contactIdentifier)
  {
    v8 = 0;
    v9 = 0;
    goto LABEL_12;
  }

  searchController = [(TUProxyRecentCall *)self searchController];
  contactStore = [searchController contactStore];
  keysToFetchForFaceTime = [MEMORY[0x1E695CD58] keysToFetchForFaceTime];
  v14 = 0;
  v8 = [contactStore unifiedContactWithIdentifier:contactIdentifier keysToFetch:keysToFetchForFaceTime error:&v14];
  v9 = v14;

  if (v8)
  {
    goto LABEL_12;
  }

  domain = [v9 domain];
  if (([domain isEqualToString:*MEMORY[0x1E695C448]] & 1) == 0)
  {

    goto LABEL_8;
  }

  code = [v9 code];

  if (code != 200)
  {
LABEL_8:
    v12 = TUDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(TUProxyRecentCall *)self backingContact];
    }
  }

  v8 = 0;
LABEL_12:

  return v8;
}

- (NSString)backingContactId
{
  recentCall = [(TUProxyRecentCall *)self recentCall];
  addressBookRecordId = [recentCall addressBookRecordId];

  return addressBookRecordId;
}

- (NSString)backingContactIdentifier
{
  recentCall = [(TUProxyRecentCall *)self recentCall];
  contactIdentifier = [recentCall contactIdentifier];

  return contactIdentifier;
}

- (NSString)destinationId
{
  recentCall = [(TUProxyRecentCall *)self recentCall];
  contactIdentifier = [recentCall contactIdentifier];

  if (contactIdentifier)
  {
    backingContact = [(TUProxyRecentCall *)self backingContact];
    [backingContact anyDestinationID];
  }

  else
  {
    backingContact = [(TUProxyRecentCall *)self recentCall];
    [backingContact callerId];
  }
  v6 = ;

  return v6;
}

- (NSArray)handles
{
  v11[1] = *MEMORY[0x1E69E9840];
  backingContact = [(TUProxyRecentCall *)self backingContact];
  v4 = backingContact;
  if (backingContact)
  {
    phoneNumberStrings = [backingContact phoneNumberStrings];
    emailAddressStrings = [v4 emailAddressStrings];
    v7 = [phoneNumberStrings arrayByAddingObjectsFromArray:emailAddressStrings];
  }

  else
  {
    destinationId = [(TUProxyRecentCall *)self destinationId];
    phoneNumberStrings = destinationId;
    if (destinationId)
    {
      v11[0] = destinationId;
      v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    }

    else
    {
      v7 = MEMORY[0x1E695E0F0];
    }
  }

  v9 = *MEMORY[0x1E69E9840];

  return v7;
}

- (int64_t)mostRecentCallType
{
  if (mostRecentCallType__pred__kCHServiceProviderTelephony != -1)
  {
    [TUProxyRecentCall mostRecentCallType];
  }

  if (mostRecentCallType__pred__kCHServiceProviderFaceTime != -1)
  {
    [TUProxyRecentCall mostRecentCallType];
  }

  if (mostRecentCallType__kCHServiceProviderTelephony)
  {
    recentCall = [(TUProxyRecentCall *)self recentCall];
    serviceProvider = [recentCall serviceProvider];
    v5 = [serviceProvider isEqualToString:mostRecentCallType__kCHServiceProviderTelephony];

    if (v5)
    {
      return 1;
    }
  }

  if (!mostRecentCallType__kCHServiceProviderFaceTime)
  {
    return 0;
  }

  recentCall2 = [(TUProxyRecentCall *)self recentCall];
  serviceProvider2 = [recentCall2 serviceProvider];
  v9 = [serviceProvider2 isEqualToString:mostRecentCallType__kCHServiceProviderFaceTime];

  if (!v9)
  {
    return 0;
  }

  recentCall3 = [(TUProxyRecentCall *)self recentCall];
  mediaType = [recentCall3 mediaType];

  v12 = 3;
  if (mediaType != 2)
  {
    v12 = 0;
  }

  if (mediaType == 1)
  {
    return 2;
  }

  else
  {
    return v12;
  }
}

void __39__TUProxyRecentCall_mostRecentCallType__block_invoke()
{
  v0 = CUTWeakLinkSymbol();
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&mostRecentCallType__kCHServiceProviderTelephony, v1);
}

void __39__TUProxyRecentCall_mostRecentCallType__block_invoke_2()
{
  v0 = CUTWeakLinkSymbol();
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&mostRecentCallType__kCHServiceProviderFaceTime, v1);
}

- (BOOL)mostRecentCallWasMissed
{
  recentCall = [(TUProxyRecentCall *)self recentCall];
  callStatus = [recentCall callStatus];
  if (__CUTWeakkCHCallStatusMissed__pred_kCHCallStatusMissedCallHistory != -1)
  {
    [TUProxyRecentCall mostRecentCallWasMissed];
  }

  v4 = callStatus == __CUTStaticWeak_kCHCallStatusMissed;

  return v4;
}

- (NSArray)idsCanonicalDestinations
{
  v11[1] = *MEMORY[0x1E69E9840];
  backingContact = [(TUProxyRecentCall *)self backingContact];
  recentCall = [(TUProxyRecentCall *)self recentCall];
  callerId = [recentCall callerId];

  if (backingContact)
  {
    allIDSDestinations = [backingContact allIDSDestinations];
  }

  else if ([callerId length])
  {
    iDSFormattedDestinationID = [callerId IDSFormattedDestinationID];
    v8 = iDSFormattedDestinationID;
    if (iDSFormattedDestinationID)
    {
      v11[0] = iDSFormattedDestinationID;
      allIDSDestinations = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    }

    else
    {
      allIDSDestinations = MEMORY[0x1E695E0F0];
    }
  }

  else
  {
    allIDSDestinations = MEMORY[0x1E695E0F0];
  }

  v9 = *MEMORY[0x1E69E9840];

  return allIDSDestinations;
}

- (TUSearchController)searchController
{
  WeakRetained = objc_loadWeakRetained(&self->_searchController);

  return WeakRetained;
}

- (void)backingContact
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138412546;
  selfCopy = self;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_1956FD000, log, OS_LOG_TYPE_ERROR, "Error fetching backing contact for recent call %@: %@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

@end