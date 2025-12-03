@interface SHHapticsEndpoints
- (SHHapticsEndpoints)initWithFetchHapticByAdamIDURL:(id)l hasHapticForAdamIDURL:(id)rL fetchHapticByISRCURL:(id)uRL hasHapticForISRCURL:(id)cURL;
- (id)availabilityRequestForID:(id)d ofIDType:(int64_t)type;
- (id)fetchRequestForID:(id)d ofIDType:(int64_t)type;
- (id)requestOfType:(int64_t)type forID:(id)d ofIDType:(int64_t)dType;
@end

@implementation SHHapticsEndpoints

- (SHHapticsEndpoints)initWithFetchHapticByAdamIDURL:(id)l hasHapticForAdamIDURL:(id)rL fetchHapticByISRCURL:(id)uRL hasHapticForISRCURL:(id)cURL
{
  lCopy = l;
  rLCopy = rL;
  uRLCopy = uRL;
  cURLCopy = cURL;
  v18.receiver = self;
  v18.super_class = SHHapticsEndpoints;
  v15 = [(SHHapticsEndpoints *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_fetchHapticByAdamIDURL, l);
    objc_storeStrong(&v16->_hasHapticForAdamIDURL, rL);
    objc_storeStrong(&v16->_fetchHapticByISRCURL, uRL);
    objc_storeStrong(&v16->_hasHapticForISRCURL, cURL);
  }

  return v16;
}

- (id)requestOfType:(int64_t)type forID:(id)d ofIDType:(int64_t)dType
{
  dCopy = d;
  if (type == 2)
  {
    v10 = [(SHHapticsEndpoints *)self fetchRequestForID:dCopy ofIDType:dType];
  }

  else
  {
    if (type != 1)
    {
      goto LABEL_6;
    }

    v10 = [(SHHapticsEndpoints *)self availabilityRequestForID:dCopy ofIDType:dType];
  }

  v5 = v10;
LABEL_6:

  return v5;
}

- (id)fetchRequestForID:(id)d ofIDType:(int64_t)type
{
  dCopy = d;
  if (type == 2)
  {
    fetchHapticByISRCURL = [(SHHapticsEndpoints *)self fetchHapticByISRCURL];
    [fetchHapticByISRCURL updateToken:11 withValue:dCopy];

    v9 = objc_alloc(MEMORY[0x277CCAD20]);
    fetchHapticByISRCURL2 = [(SHHapticsEndpoints *)self fetchHapticByISRCURL];
  }

  else
  {
    if (type != 1)
    {
      goto LABEL_6;
    }

    fetchHapticByAdamIDURL = [(SHHapticsEndpoints *)self fetchHapticByAdamIDURL];
    [fetchHapticByAdamIDURL updateToken:11 withValue:dCopy];

    v9 = objc_alloc(MEMORY[0x277CCAD20]);
    fetchHapticByISRCURL2 = [(SHHapticsEndpoints *)self fetchHapticByAdamIDURL];
  }

  v12 = fetchHapticByISRCURL2;
  uRLRepresentation = [fetchHapticByISRCURL2 URLRepresentation];
  v4 = [v9 initWithURL:uRLRepresentation];

LABEL_6:

  return v4;
}

- (id)availabilityRequestForID:(id)d ofIDType:(int64_t)type
{
  dCopy = d;
  if (type == 2)
  {
    hasHapticForISRCURL = [(SHHapticsEndpoints *)self hasHapticForISRCURL];
    [hasHapticForISRCURL updateToken:11 withValue:dCopy];

    v9 = objc_alloc(MEMORY[0x277CCAD20]);
    hasHapticForISRCURL2 = [(SHHapticsEndpoints *)self hasHapticForISRCURL];
  }

  else
  {
    if (type != 1)
    {
      goto LABEL_6;
    }

    hasHapticForAdamIDURL = [(SHHapticsEndpoints *)self hasHapticForAdamIDURL];
    [hasHapticForAdamIDURL updateToken:11 withValue:dCopy];

    v9 = objc_alloc(MEMORY[0x277CCAD20]);
    hasHapticForISRCURL2 = [(SHHapticsEndpoints *)self hasHapticForAdamIDURL];
  }

  v12 = hasHapticForISRCURL2;
  uRLRepresentation = [hasHapticForISRCURL2 URLRepresentation];
  v4 = [v9 initWithURL:uRLRepresentation];

LABEL_6:

  return v4;
}

@end