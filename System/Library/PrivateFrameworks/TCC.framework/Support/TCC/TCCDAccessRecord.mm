@interface TCCDAccessRecord
- (TCCDAccessRecord)initWithSubject:(id)subject object:(id)object authorizationValue:(unint64_t)value authorizationReason:(unint64_t)reason authorizationVersion:(unint64_t)version flags:(unint64_t)flags;
- (TCCDAccessRecord)initWithSubject:(id)subject object:(id)object authorizationValue:(unint64_t)value authorizationReason:(unint64_t)reason authorizationVersion:(unint64_t)version lastModified:(id)modified flags:(unint64_t)flags replaceStoredCodeRequirement:(BOOL)self0;
- (id)_dateFormatter;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)descriptionDictionary;
@end

@implementation TCCDAccessRecord

- (TCCDAccessRecord)initWithSubject:(id)subject object:(id)object authorizationValue:(unint64_t)value authorizationReason:(unint64_t)reason authorizationVersion:(unint64_t)version lastModified:(id)modified flags:(unint64_t)flags replaceStoredCodeRequirement:(BOOL)self0
{
  subjectCopy = subject;
  objectCopy = object;
  modifiedCopy = modified;
  v23.receiver = self;
  v23.super_class = TCCDAccessRecord;
  v20 = [(TCCDAccessRecord *)&v23 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_subjectIdentity, subject);
    objc_storeStrong(&v21->_accessObject, object);
    v21->_authorizationValue = value;
    v21->_authorizationReason = reason;
    v21->_authorizationVersion = version;
    objc_storeStrong(&v21->_lastModifiedDate, modified);
    v21->_flags = flags;
    v21->_replaceStoredCodeRequirement = requirement;
  }

  return v21;
}

- (TCCDAccessRecord)initWithSubject:(id)subject object:(id)object authorizationValue:(unint64_t)value authorizationReason:(unint64_t)reason authorizationVersion:(unint64_t)version flags:(unint64_t)flags
{
  subjectCopy = subject;
  objectCopy = object;
  v20.receiver = self;
  v20.super_class = TCCDAccessRecord;
  v17 = [(TCCDAccessRecord *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_subjectIdentity, subject);
    objc_storeStrong(&v18->_accessObject, object);
    v18->_authorizationValue = value;
    v18->_authorizationReason = reason;
    v18->_authorizationVersion = version;
    v18->_flags = flags;
  }

  return v18;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  subjectIdentity = [(TCCDAccessRecord *)self subjectIdentity];
  accessObject = [(TCCDAccessRecord *)self accessObject];
  authorizationValue = [(TCCDAccessRecord *)self authorizationValue];
  authorizationReason = [(TCCDAccessRecord *)self authorizationReason];
  authorizationValue2 = [(TCCDAccessRecord *)self authorizationValue];
  lastModifiedDate = [(TCCDAccessRecord *)self lastModifiedDate];
  flags = [(TCCDAccessRecord *)self flags];
  LOBYTE(v14) = [(TCCDAccessRecord *)self replaceStoredCodeRequirement];
  v12 = [v4 initWithSubject:subjectIdentity object:accessObject authorizationValue:authorizationValue authorizationReason:authorizationReason authorizationVersion:authorizationValue2 lastModified:lastModifiedDate flags:flags replaceStoredCodeRequirement:v14];

  return v12;
}

- (id)_dateFormatter
{
  if (qword_1000C1218 != -1)
  {
    sub_10004D7C0();
  }

  v3 = qword_1000C1210;

  return v3;
}

- (id)descriptionDictionary
{
  v3 = objc_alloc_init(NSMutableDictionary);
  subjectIdentity = [(TCCDAccessRecord *)self subjectIdentity];
  v5 = [subjectIdentity description];
  [v3 setObject:v5 forKeyedSubscript:@"Sub"];

  accessObject = [(TCCDAccessRecord *)self accessObject];
  v7 = [accessObject description];
  [v3 setObject:v7 forKeyedSubscript:@"Obj"];

  accessObject2 = [(TCCDAccessRecord *)self accessObject];
  serviceObject = [accessObject2 serviceObject];
  v10 = [serviceObject descriptionForAuthorizationValue:-[TCCDAccessRecord authorizationValue](self reason:{"authorizationValue"), -[TCCDAccessRecord authorizationReason](self, "authorizationReason")}];
  [v3 setObject:v10 forKeyedSubscript:@"Auth"];

  v11 = [NSString stringWithFormat:@"%llu", [(TCCDAccessRecord *)self authorizationVersion]];
  [v3 setObject:v11 forKeyedSubscript:@"AuthVersion"];

  _dateFormatter = [(TCCDAccessRecord *)self _dateFormatter];
  lastModifiedDate = [(TCCDAccessRecord *)self lastModifiedDate];
  v14 = [_dateFormatter stringFromDate:lastModifiedDate];
  [v3 setObject:v14 forKeyedSubscript:@"Mod"];

  if ([(TCCDAccessRecord *)self flags])
  {
    v15 = objc_alloc_init(NSMutableString);
    [v15 appendFormat:@"{"];
    if (([(TCCDAccessRecord *)self flags]& 1) != 0)
    {
      [v15 appendFormat:@"Timeout"];
      if (([(TCCDAccessRecord *)self flags]& 2) == 0)
      {
        v16 = 1;
        goto LABEL_10;
      }

      [v15 appendFormat:@" | "];
      v16 = 2;
    }

    else
    {
      if (([(TCCDAccessRecord *)self flags]& 2) == 0)
      {
        v16 = 0;
        goto LABEL_10;
      }

      v16 = 1;
    }

    [v15 appendFormat:@"SB Ext"];
LABEL_10:
    if (([(TCCDAccessRecord *)self flags]& 4) != 0)
    {
      if (v16)
      {
        [v15 appendFormat:@" | "];
      }

      [v15 appendFormat:@"Allow Standard User to Set System Service"];
      ++v16;
    }

    if (([(TCCDAccessRecord *)self flags]& 8) != 0)
    {
      if (v16)
      {
        [v15 appendFormat:@" | "];
      }

      [v15 appendFormat:@"Next Request Should Prompt"];
      v16 = 1;
    }

    if (([(TCCDAccessRecord *)self flags]& 0x10) != 0)
    {
      if (v16)
      {
        [v15 appendFormat:@" | "];
      }

      v17 = @"Has Prompted For Allow";
    }

    else
    {
      if (v16)
      {
LABEL_25:
        [v15 appendFormat:@"}"];
        [v3 setObject:v15 forKeyedSubscript:@"Flags"];

        goto LABEL_26;
      }

      v17 = @"Default";
    }

    [v15 appendFormat:v17];
    goto LABEL_25;
  }

LABEL_26:
  v18 = [v3 copy];

  return v18;
}

- (id)description
{
  descriptionDictionary = [(TCCDAccessRecord *)self descriptionDictionary];
  v3 = [descriptionDictionary description];

  return v3;
}

@end