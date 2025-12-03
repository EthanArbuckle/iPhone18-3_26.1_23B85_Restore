@interface CSDThumperAccount
+ (id)phoneNumberMCCToISOCountryCodeTransformBlock;
+ (void)setPhoneNumberMCCToISOCountryCodeTransformBlock:(id)block;
- (BOOL)containsRegisteredDeviceID:(id)d;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToAccount:(id)account;
- (CSDThumperAccount)init;
- (CSDThumperAccount)initWithAccountID:(id)d primaryDeviceID:(id)iD phoneNumberURI:(id)i availableDeviceSlots:(int64_t)slots allowedSecondaryDeviceIDs:(id)ds;
- (CSDThumperAccount)initWithDictionaryRepresentation:(id)representation;
- (NSDictionary)dictionaryRepresentation;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation CSDThumperAccount

- (CSDThumperAccount)init
{
  [(CSDThumperAccount *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (CSDThumperAccount)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = [representationCopy objectForKeyedSubscript:kPSAccountId];
  v6 = [representationCopy objectForKeyedSubscript:kPSPrimaryDeviceId];
  v7 = [representationCopy objectForKeyedSubscript:kPSAccountFreeSlots];
  integerValue = [v7 integerValue];

  v9 = [representationCopy objectForKeyedSubscript:kPSMdn];
  v10 = [representationCopy objectForKeyedSubscript:kPSMcc];
  v11 = [representationCopy objectForKeyedSubscript:kPSIsoMcc];
  objc_opt_class();
  v31 = v6;
  v32 = v5;
  selfCopy = self;
  v27 = v11;
  v28 = v10;
  v26 = integerValue;
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      phoneNumberMCCToISOCountryCodeTransformBlock = [objc_opt_class() phoneNumberMCCToISOCountryCodeTransformBlock];
      v12 = phoneNumberMCCToISOCountryCodeTransformBlock[2](phoneNumberMCCToISOCountryCodeTransformBlock, v10);
    }

    else
    {
      v12 = 0;
    }
  }

  v29 = v9;
  v14 = IDSCopyIDForPhoneNumberWithOptions();
  v15 = [representationCopy objectForKeyedSubscript:kPSDeviceList];
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
    v24 = [(CSDThumperAccount *)selfCopy initWithAccountID:v32 primaryDeviceID:v31 phoneNumberURI:v14 availableDeviceSlots:v26 allowedSecondaryDeviceIDs:v16];
  }

  else
  {

    v24 = 0;
  }

  return v24;
}

- (CSDThumperAccount)initWithAccountID:(id)d primaryDeviceID:(id)iD phoneNumberURI:(id)i availableDeviceSlots:(int64_t)slots allowedSecondaryDeviceIDs:(id)ds
{
  dCopy = d;
  iDCopy = iD;
  iCopy = i;
  dsCopy = ds;
  v26.receiver = self;
  v26.super_class = CSDThumperAccount;
  v16 = [(CSDThumperAccount *)&v26 init];
  if (v16)
  {
    v17 = [dCopy copy];
    accountID = v16->_accountID;
    v16->_accountID = v17;

    v19 = [iDCopy copy];
    primaryDeviceID = v16->_primaryDeviceID;
    v16->_primaryDeviceID = v19;

    v21 = [iCopy copy];
    phoneNumberURI = v16->_phoneNumberURI;
    v16->_phoneNumberURI = v21;

    v23 = [dsCopy copy];
    allowedSecondaryDeviceIDs = v16->_allowedSecondaryDeviceIDs;
    v16->_allowedSecondaryDeviceIDs = v23;

    v16->_availableDeviceSlots = slots;
  }

  return v16;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CSDThumperAccount alloc];
  accountID = [(CSDThumperAccount *)self accountID];
  primaryDeviceID = [(CSDThumperAccount *)self primaryDeviceID];
  phoneNumberURI = [(CSDThumperAccount *)self phoneNumberURI];
  availableDeviceSlots = [(CSDThumperAccount *)self availableDeviceSlots];
  allowedSecondaryDeviceIDs = [(CSDThumperAccount *)self allowedSecondaryDeviceIDs];
  v10 = [(CSDThumperAccount *)v4 initWithAccountID:accountID primaryDeviceID:primaryDeviceID phoneNumberURI:phoneNumberURI availableDeviceSlots:availableDeviceSlots allowedSecondaryDeviceIDs:allowedSecondaryDeviceIDs];

  return v10;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [CSDMutableThumperAccount alloc];
  accountID = [(CSDThumperAccount *)self accountID];
  primaryDeviceID = [(CSDThumperAccount *)self primaryDeviceID];
  phoneNumberURI = [(CSDThumperAccount *)self phoneNumberURI];
  availableDeviceSlots = [(CSDThumperAccount *)self availableDeviceSlots];
  allowedSecondaryDeviceIDs = [(CSDThumperAccount *)self allowedSecondaryDeviceIDs];
  v10 = [(CSDThumperAccount *)v4 initWithAccountID:accountID primaryDeviceID:primaryDeviceID phoneNumberURI:phoneNumberURI availableDeviceSlots:availableDeviceSlots allowedSecondaryDeviceIDs:allowedSecondaryDeviceIDs];

  return v10;
}

- (id)description
{
  v3 = objc_alloc_init(NSMutableString);
  [v3 appendFormat:@"<%@ %p ", objc_opt_class(), self];
  v4 = NSStringFromSelector("accountID");
  accountID = [(CSDThumperAccount *)self accountID];
  [v3 appendFormat:@"%@=%@", v4, accountID];

  [v3 appendFormat:@", "];
  v6 = NSStringFromSelector("primaryDeviceID");
  primaryDeviceID = [(CSDThumperAccount *)self primaryDeviceID];
  [v3 appendFormat:@"%@=%@", v6, primaryDeviceID];

  [v3 appendFormat:@", "];
  v8 = NSStringFromSelector("phoneNumberURI");
  phoneNumberURI = [(CSDThumperAccount *)self phoneNumberURI];
  [v3 appendFormat:@"%@=%@", v8, phoneNumberURI];

  [v3 appendFormat:@", "];
  v10 = NSStringFromSelector("availableDeviceSlots");
  [v3 appendFormat:@"%@=%ld", v10, -[CSDThumperAccount availableDeviceSlots](self, "availableDeviceSlots")];

  [v3 appendFormat:@", "];
  v11 = NSStringFromSelector("allowedSecondaryDeviceIDs");
  allowedSecondaryDeviceIDs = [(CSDThumperAccount *)self allowedSecondaryDeviceIDs];
  [v3 appendFormat:@"%@=%@", v11, allowedSecondaryDeviceIDs];

  [v3 appendFormat:@">"];
  v13 = [v3 copy];

  return v13;
}

- (unint64_t)hash
{
  accountID = [(CSDThumperAccount *)self accountID];
  v4 = [accountID hash];
  primaryDeviceID = [(CSDThumperAccount *)self primaryDeviceID];
  v6 = [primaryDeviceID hash] ^ v4;
  phoneNumberURI = [(CSDThumperAccount *)self phoneNumberURI];
  v8 = [phoneNumberURI hash];
  allowedSecondaryDeviceIDs = [(CSDThumperAccount *)self allowedSecondaryDeviceIDs];
  v10 = v6 ^ v8 ^ [allowedSecondaryDeviceIDs hash];
  availableDeviceSlots = [(CSDThumperAccount *)self availableDeviceSlots];

  return v10 ^ availableDeviceSlots;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(CSDThumperAccount *)self isEqualToAccount:equalCopy];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isEqualToAccount:(id)account
{
  accountCopy = account;
  accountID = [(CSDThumperAccount *)self accountID];
  accountID2 = [accountCopy accountID];
  if (TUStringsAreEqualOrNil())
  {
    primaryDeviceID = [(CSDThumperAccount *)self primaryDeviceID];
    primaryDeviceID2 = [accountCopy primaryDeviceID];
    if (TUStringsAreEqualOrNil())
    {
      phoneNumberURI = [(CSDThumperAccount *)self phoneNumberURI];
      phoneNumberURI2 = [accountCopy phoneNumberURI];
      if (TUStringsAreEqualOrNil())
      {
        allowedSecondaryDeviceIDs = [(CSDThumperAccount *)self allowedSecondaryDeviceIDs];
        allowedSecondaryDeviceIDs2 = [accountCopy allowedSecondaryDeviceIDs];
        if (TUObjectsAreEqualOrNil())
        {
          availableDeviceSlots = [(CSDThumperAccount *)self availableDeviceSlots];
          v14 = availableDeviceSlots == [accountCopy availableDeviceSlots];
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

- (BOOL)containsRegisteredDeviceID:(id)d
{
  dCopy = d;
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
  accountID = [(CSDThumperAccount *)self accountID];
  v11[0] = accountID;
  v10[1] = kPSPrimaryDeviceId;
  primaryDeviceID = [(CSDThumperAccount *)self primaryDeviceID];
  v11[1] = primaryDeviceID;
  v10[2] = kPSAccountFreeSlots;
  v5 = [NSNumber numberWithInteger:[(CSDThumperAccount *)self availableDeviceSlots]];
  v11[2] = v5;
  v10[3] = kPSMdn;
  phoneNumberURI = [(CSDThumperAccount *)self phoneNumberURI];
  _stripFZIDPrefix = [phoneNumberURI _stripFZIDPrefix];
  v11[3] = _stripFZIDPrefix;
  v8 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:4];

  return v8;
}

+ (id)phoneNumberMCCToISOCountryCodeTransformBlock
{
  v2 = objc_retainBlock(off_10069E300);

  return v2;
}

+ (void)setPhoneNumberMCCToISOCountryCodeTransformBlock:(id)block
{
  v3 = objc_retainBlock(block);
  v4 = off_10069E300;
  off_10069E300 = v3;
}

@end