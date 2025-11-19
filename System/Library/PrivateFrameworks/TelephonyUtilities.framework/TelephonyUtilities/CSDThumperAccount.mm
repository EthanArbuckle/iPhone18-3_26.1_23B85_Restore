@interface CSDThumperAccount
+ (id)phoneNumberMCCToISOCountryCodeTransformBlock;
+ (void)setPhoneNumberMCCToISOCountryCodeTransformBlock:(id)a3;
- (BOOL)containsRegisteredDeviceID:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToAccount:(id)a3;
- (CSDThumperAccount)init;
- (CSDThumperAccount)initWithAccountID:(id)a3 primaryDeviceID:(id)a4 phoneNumberURI:(id)a5 availableDeviceSlots:(int64_t)a6 allowedSecondaryDeviceIDs:(id)a7;
- (CSDThumperAccount)initWithDictionaryRepresentation:(id)a3;
- (NSDictionary)dictionaryRepresentation;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation CSDThumperAccount

- (CSDThumperAccount)init
{
  [(CSDThumperAccount *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (CSDThumperAccount)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:kPSAccountId];
  v6 = [v4 objectForKeyedSubscript:kPSPrimaryDeviceId];
  v7 = [v4 objectForKeyedSubscript:kPSAccountFreeSlots];
  v8 = [v7 integerValue];

  v9 = [v4 objectForKeyedSubscript:kPSMdn];
  v10 = [v4 objectForKeyedSubscript:kPSMcc];
  v11 = [v4 objectForKeyedSubscript:kPSIsoMcc];
  objc_opt_class();
  v31 = v6;
  v32 = v5;
  v30 = self;
  v27 = v11;
  v28 = v10;
  v26 = v8;
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [objc_opt_class() phoneNumberMCCToISOCountryCodeTransformBlock];
      v12 = v13[2](v13, v10);
    }

    else
    {
      v12 = 0;
    }
  }

  v29 = v9;
  v14 = IDSCopyIDForPhoneNumberWithOptions();
  v15 = [v4 objectForKeyedSubscript:kPSDeviceList];
  v16 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v15 count]);
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v17 = v15;
  v18 = [v17 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v34;
    v21 = kPSDeviceId;
    do
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v34 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v23 = [*(*(&v33 + 1) + 8 * i) objectForKeyedSubscript:v21];
        if (v23)
        {
          [v16 addObject:v23];
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v19);
  }

  if (v32 && v31 && v14)
  {
    v24 = [(CSDThumperAccount *)v30 initWithAccountID:v32 primaryDeviceID:v31 phoneNumberURI:v14 availableDeviceSlots:v26 allowedSecondaryDeviceIDs:v16];
  }

  else
  {

    v24 = 0;
  }

  return v24;
}

- (CSDThumperAccount)initWithAccountID:(id)a3 primaryDeviceID:(id)a4 phoneNumberURI:(id)a5 availableDeviceSlots:(int64_t)a6 allowedSecondaryDeviceIDs:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v26.receiver = self;
  v26.super_class = CSDThumperAccount;
  v16 = [(CSDThumperAccount *)&v26 init];
  if (v16)
  {
    v17 = [v12 copy];
    accountID = v16->_accountID;
    v16->_accountID = v17;

    v19 = [v13 copy];
    primaryDeviceID = v16->_primaryDeviceID;
    v16->_primaryDeviceID = v19;

    v21 = [v14 copy];
    phoneNumberURI = v16->_phoneNumberURI;
    v16->_phoneNumberURI = v21;

    v23 = [v15 copy];
    allowedSecondaryDeviceIDs = v16->_allowedSecondaryDeviceIDs;
    v16->_allowedSecondaryDeviceIDs = v23;

    v16->_availableDeviceSlots = a6;
  }

  return v16;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CSDThumperAccount alloc];
  v5 = [(CSDThumperAccount *)self accountID];
  v6 = [(CSDThumperAccount *)self primaryDeviceID];
  v7 = [(CSDThumperAccount *)self phoneNumberURI];
  v8 = [(CSDThumperAccount *)self availableDeviceSlots];
  v9 = [(CSDThumperAccount *)self allowedSecondaryDeviceIDs];
  v10 = [(CSDThumperAccount *)v4 initWithAccountID:v5 primaryDeviceID:v6 phoneNumberURI:v7 availableDeviceSlots:v8 allowedSecondaryDeviceIDs:v9];

  return v10;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [CSDMutableThumperAccount alloc];
  v5 = [(CSDThumperAccount *)self accountID];
  v6 = [(CSDThumperAccount *)self primaryDeviceID];
  v7 = [(CSDThumperAccount *)self phoneNumberURI];
  v8 = [(CSDThumperAccount *)self availableDeviceSlots];
  v9 = [(CSDThumperAccount *)self allowedSecondaryDeviceIDs];
  v10 = [(CSDThumperAccount *)v4 initWithAccountID:v5 primaryDeviceID:v6 phoneNumberURI:v7 availableDeviceSlots:v8 allowedSecondaryDeviceIDs:v9];

  return v10;
}

- (id)description
{
  v3 = objc_alloc_init(NSMutableString);
  [v3 appendFormat:@"<%@ %p ", objc_opt_class(), self];
  v4 = NSStringFromSelector("accountID");
  v5 = [(CSDThumperAccount *)self accountID];
  [v3 appendFormat:@"%@=%@", v4, v5];

  [v3 appendFormat:@", "];
  v6 = NSStringFromSelector("primaryDeviceID");
  v7 = [(CSDThumperAccount *)self primaryDeviceID];
  [v3 appendFormat:@"%@=%@", v6, v7];

  [v3 appendFormat:@", "];
  v8 = NSStringFromSelector("phoneNumberURI");
  v9 = [(CSDThumperAccount *)self phoneNumberURI];
  [v3 appendFormat:@"%@=%@", v8, v9];

  [v3 appendFormat:@", "];
  v10 = NSStringFromSelector("availableDeviceSlots");
  [v3 appendFormat:@"%@=%ld", v10, -[CSDThumperAccount availableDeviceSlots](self, "availableDeviceSlots")];

  [v3 appendFormat:@", "];
  v11 = NSStringFromSelector("allowedSecondaryDeviceIDs");
  v12 = [(CSDThumperAccount *)self allowedSecondaryDeviceIDs];
  [v3 appendFormat:@"%@=%@", v11, v12];

  [v3 appendFormat:@">"];
  v13 = [v3 copy];

  return v13;
}

- (unint64_t)hash
{
  v3 = [(CSDThumperAccount *)self accountID];
  v4 = [v3 hash];
  v5 = [(CSDThumperAccount *)self primaryDeviceID];
  v6 = [v5 hash] ^ v4;
  v7 = [(CSDThumperAccount *)self phoneNumberURI];
  v8 = [v7 hash];
  v9 = [(CSDThumperAccount *)self allowedSecondaryDeviceIDs];
  v10 = v6 ^ v8 ^ [v9 hash];
  v11 = [(CSDThumperAccount *)self availableDeviceSlots];

  return v10 ^ v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(CSDThumperAccount *)self isEqualToAccount:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isEqualToAccount:(id)a3
{
  v4 = a3;
  v5 = [(CSDThumperAccount *)self accountID];
  v6 = [v4 accountID];
  if (TUStringsAreEqualOrNil())
  {
    v7 = [(CSDThumperAccount *)self primaryDeviceID];
    v8 = [v4 primaryDeviceID];
    if (TUStringsAreEqualOrNil())
    {
      v9 = [(CSDThumperAccount *)self phoneNumberURI];
      v10 = [v4 phoneNumberURI];
      if (TUStringsAreEqualOrNil())
      {
        v11 = [(CSDThumperAccount *)self allowedSecondaryDeviceIDs];
        v12 = [v4 allowedSecondaryDeviceIDs];
        if (TUObjectsAreEqualOrNil())
        {
          v13 = [(CSDThumperAccount *)self availableDeviceSlots];
          v14 = v13 == [v4 availableDeviceSlots];
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)containsRegisteredDeviceID:(id)a3
{
  v4 = a3;
  [(CSDThumperAccount *)self allowedSecondaryDeviceIDs];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = v14 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if (TUStringsAreCaseInsensitiveEqual())
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (NSDictionary)dictionaryRepresentation
{
  v10[0] = kPSAccountId;
  v3 = [(CSDThumperAccount *)self accountID];
  v11[0] = v3;
  v10[1] = kPSPrimaryDeviceId;
  v4 = [(CSDThumperAccount *)self primaryDeviceID];
  v11[1] = v4;
  v10[2] = kPSAccountFreeSlots;
  v5 = [NSNumber numberWithInteger:[(CSDThumperAccount *)self availableDeviceSlots]];
  v11[2] = v5;
  v10[3] = kPSMdn;
  v6 = [(CSDThumperAccount *)self phoneNumberURI];
  v7 = [v6 _stripFZIDPrefix];
  v11[3] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:4];

  return v8;
}

+ (id)phoneNumberMCCToISOCountryCodeTransformBlock
{
  v2 = objc_retainBlock(off_10069E300);

  return v2;
}

+ (void)setPhoneNumberMCCToISOCountryCodeTransformBlock:(id)a3
{
  v3 = objc_retainBlock(a3);
  v4 = off_10069E300;
  off_10069E300 = v3;
}

@end