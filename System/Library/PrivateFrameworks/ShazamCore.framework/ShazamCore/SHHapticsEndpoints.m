@interface SHHapticsEndpoints
- (SHHapticsEndpoints)initWithFetchHapticByAdamIDURL:(id)a3 hasHapticForAdamIDURL:(id)a4 fetchHapticByISRCURL:(id)a5 hasHapticForISRCURL:(id)a6;
- (id)availabilityRequestForID:(id)a3 ofIDType:(int64_t)a4;
- (id)fetchRequestForID:(id)a3 ofIDType:(int64_t)a4;
- (id)requestOfType:(int64_t)a3 forID:(id)a4 ofIDType:(int64_t)a5;
@end

@implementation SHHapticsEndpoints

- (SHHapticsEndpoints)initWithFetchHapticByAdamIDURL:(id)a3 hasHapticForAdamIDURL:(id)a4 fetchHapticByISRCURL:(id)a5 hasHapticForISRCURL:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = SHHapticsEndpoints;
  v15 = [(SHHapticsEndpoints *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_fetchHapticByAdamIDURL, a3);
    objc_storeStrong(&v16->_hasHapticForAdamIDURL, a4);
    objc_storeStrong(&v16->_fetchHapticByISRCURL, a5);
    objc_storeStrong(&v16->_hasHapticForISRCURL, a6);
  }

  return v16;
}

- (id)requestOfType:(int64_t)a3 forID:(id)a4 ofIDType:(int64_t)a5
{
  v9 = a4;
  if (a3 == 2)
  {
    v10 = [(SHHapticsEndpoints *)self fetchRequestForID:v9 ofIDType:a5];
  }

  else
  {
    if (a3 != 1)
    {
      goto LABEL_6;
    }

    v10 = [(SHHapticsEndpoints *)self availabilityRequestForID:v9 ofIDType:a5];
  }

  v5 = v10;
LABEL_6:

  return v5;
}

- (id)fetchRequestForID:(id)a3 ofIDType:(int64_t)a4
{
  v7 = a3;
  if (a4 == 2)
  {
    v11 = [(SHHapticsEndpoints *)self fetchHapticByISRCURL];
    [v11 updateToken:11 withValue:v7];

    v9 = objc_alloc(MEMORY[0x277CCAD20]);
    v10 = [(SHHapticsEndpoints *)self fetchHapticByISRCURL];
  }

  else
  {
    if (a4 != 1)
    {
      goto LABEL_6;
    }

    v8 = [(SHHapticsEndpoints *)self fetchHapticByAdamIDURL];
    [v8 updateToken:11 withValue:v7];

    v9 = objc_alloc(MEMORY[0x277CCAD20]);
    v10 = [(SHHapticsEndpoints *)self fetchHapticByAdamIDURL];
  }

  v12 = v10;
  v13 = [v10 URLRepresentation];
  v4 = [v9 initWithURL:v13];

LABEL_6:

  return v4;
}

- (id)availabilityRequestForID:(id)a3 ofIDType:(int64_t)a4
{
  v7 = a3;
  if (a4 == 2)
  {
    v11 = [(SHHapticsEndpoints *)self hasHapticForISRCURL];
    [v11 updateToken:11 withValue:v7];

    v9 = objc_alloc(MEMORY[0x277CCAD20]);
    v10 = [(SHHapticsEndpoints *)self hasHapticForISRCURL];
  }

  else
  {
    if (a4 != 1)
    {
      goto LABEL_6;
    }

    v8 = [(SHHapticsEndpoints *)self hasHapticForAdamIDURL];
    [v8 updateToken:11 withValue:v7];

    v9 = objc_alloc(MEMORY[0x277CCAD20]);
    v10 = [(SHHapticsEndpoints *)self hasHapticForAdamIDURL];
  }

  v12 = v10;
  v13 = [v10 URLRepresentation];
  v4 = [v9 initWithURL:v13];

LABEL_6:

  return v4;
}

@end