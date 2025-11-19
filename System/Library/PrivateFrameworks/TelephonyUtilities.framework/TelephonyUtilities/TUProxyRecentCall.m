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
- (TUProxyRecentCall)initWithRecentCall:(id)a3;
- (TUSearchController)searchController;
- (id)forwardingTargetForSelector:(SEL)a3;
- (int64_t)mostRecentCallType;
- (void)backingContact;
@end

@implementation TUProxyRecentCall

- (TUProxyRecentCall)initWithRecentCall:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TUProxyRecentCall;
  v6 = [(TUProxyRecentCall *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_recentCall, a3);
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
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[TUProxyRecentCall init]"];
    [v7 handleFailureInMethod:a2 object:self file:@"TUProxyRecentCall.m" lineNumber:50 description:{@"Don't call %@, call designated initializer instead.", v8}];
  }

  return 0;
}

- (NSString)mostRecentCallInfo
{
  v3 = [(TUProxyRecentCall *)self mostRecentCallType];
  if (v3 - 2 < 2)
  {
    v4 = [MEMORY[0x1E696AAE8] mainBundle];
    v5 = [v4 localizedStringForKey:@"FaceTime" value:&stru_1F098C218 table:0];
    goto LABEL_5;
  }

  if (v3 <= 1)
  {
    v4 = [(TUProxyRecentCall *)self recentCall];
    v5 = [v4 callerIdSubStringForDisplay];
LABEL_5:
    v6 = v5;

    goto LABEL_6;
  }

  v6 = 0;
LABEL_6:

  return v6;
}

- (id)forwardingTargetForSelector:(SEL)a3
{
  if (sel_callerId == a3 || sel_isoCountryCode == a3)
  {
    v4 = [(TUProxyRecentCall *)self recentCall];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = TUProxyRecentCall;
    v4 = [(TUProxyRecentCall *)&v6 forwardingTargetForSelector:?];
  }

  return v4;
}

- (NSString)displayName
{
  v3 = [(TUProxyRecentCall *)self backingContact];
  v4 = [v3 displayName];

  if ([v4 length])
  {
    v5 = v4;
    goto LABEL_8;
  }

  v6 = [(TUProxyRecentCall *)self recentCall];
  v7 = [v6 callerIdForDisplay];
  v8 = [v7 length];

  v9 = [(TUProxyRecentCall *)self recentCall];
  v10 = v9;
  if (v8)
  {
    v11 = [v9 callerIdForDisplay];
LABEL_7:
    v5 = v11;

    goto LABEL_8;
  }

  v12 = [v9 callerNameForDisplay];
  v13 = [v12 length];

  if (v13)
  {
    v10 = [(TUProxyRecentCall *)self recentCall];
    v11 = [v10 callerNameForDisplay];
    goto LABEL_7;
  }

  v5 = 0;
LABEL_8:

  return v5;
}

- (CNContact)backingContact
{
  v3 = [(TUProxyRecentCall *)self recentCall];
  v4 = [v3 contactIdentifier];

  if (!v4)
  {
    v8 = 0;
    v9 = 0;
    goto LABEL_12;
  }

  v5 = [(TUProxyRecentCall *)self searchController];
  v6 = [v5 contactStore];
  v7 = [MEMORY[0x1E695CD58] keysToFetchForFaceTime];
  v14 = 0;
  v8 = [v6 unifiedContactWithIdentifier:v4 keysToFetch:v7 error:&v14];
  v9 = v14;

  if (v8)
  {
    goto LABEL_12;
  }

  v10 = [v9 domain];
  if (([v10 isEqualToString:*MEMORY[0x1E695C448]] & 1) == 0)
  {

    goto LABEL_8;
  }

  v11 = [v9 code];

  if (v11 != 200)
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
  v2 = [(TUProxyRecentCall *)self recentCall];
  v3 = [v2 addressBookRecordId];

  return v3;
}

- (NSString)backingContactIdentifier
{
  v2 = [(TUProxyRecentCall *)self recentCall];
  v3 = [v2 contactIdentifier];

  return v3;
}

- (NSString)destinationId
{
  v3 = [(TUProxyRecentCall *)self recentCall];
  v4 = [v3 contactIdentifier];

  if (v4)
  {
    v5 = [(TUProxyRecentCall *)self backingContact];
    [v5 anyDestinationID];
  }

  else
  {
    v5 = [(TUProxyRecentCall *)self recentCall];
    [v5 callerId];
  }
  v6 = ;

  return v6;
}

- (NSArray)handles
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = [(TUProxyRecentCall *)self backingContact];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 phoneNumberStrings];
    v6 = [v4 emailAddressStrings];
    v7 = [v5 arrayByAddingObjectsFromArray:v6];
  }

  else
  {
    v8 = [(TUProxyRecentCall *)self destinationId];
    v5 = v8;
    if (v8)
    {
      v11[0] = v8;
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
    v3 = [(TUProxyRecentCall *)self recentCall];
    v4 = [v3 serviceProvider];
    v5 = [v4 isEqualToString:mostRecentCallType__kCHServiceProviderTelephony];

    if (v5)
    {
      return 1;
    }
  }

  if (!mostRecentCallType__kCHServiceProviderFaceTime)
  {
    return 0;
  }

  v7 = [(TUProxyRecentCall *)self recentCall];
  v8 = [v7 serviceProvider];
  v9 = [v8 isEqualToString:mostRecentCallType__kCHServiceProviderFaceTime];

  if (!v9)
  {
    return 0;
  }

  v10 = [(TUProxyRecentCall *)self recentCall];
  v11 = [v10 mediaType];

  v12 = 3;
  if (v11 != 2)
  {
    v12 = 0;
  }

  if (v11 == 1)
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
  v2 = [(TUProxyRecentCall *)self recentCall];
  v3 = [v2 callStatus];
  if (__CUTWeakkCHCallStatusMissed__pred_kCHCallStatusMissedCallHistory != -1)
  {
    [TUProxyRecentCall mostRecentCallWasMissed];
  }

  v4 = v3 == __CUTStaticWeak_kCHCallStatusMissed;

  return v4;
}

- (NSArray)idsCanonicalDestinations
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = [(TUProxyRecentCall *)self backingContact];
  v4 = [(TUProxyRecentCall *)self recentCall];
  v5 = [v4 callerId];

  if (v3)
  {
    v6 = [v3 allIDSDestinations];
  }

  else if ([v5 length])
  {
    v7 = [v5 IDSFormattedDestinationID];
    v8 = v7;
    if (v7)
    {
      v11[0] = v7;
      v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    }

    else
    {
      v6 = MEMORY[0x1E695E0F0];
    }
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  v9 = *MEMORY[0x1E69E9840];

  return v6;
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
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_1956FD000, log, OS_LOG_TYPE_ERROR, "Error fetching backing contact for recent call %@: %@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

@end