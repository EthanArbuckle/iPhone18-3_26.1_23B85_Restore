@interface TCCDAccessRecord
- (TCCDAccessRecord)initWithSubject:(id)a3 object:(id)a4 authorizationValue:(unint64_t)a5 authorizationReason:(unint64_t)a6 authorizationVersion:(unint64_t)a7 flags:(unint64_t)a8;
- (TCCDAccessRecord)initWithSubject:(id)a3 object:(id)a4 authorizationValue:(unint64_t)a5 authorizationReason:(unint64_t)a6 authorizationVersion:(unint64_t)a7 lastModified:(id)a8 flags:(unint64_t)a9 replaceStoredCodeRequirement:(BOOL)a10;
- (id)_dateFormatter;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)descriptionDictionary;
@end

@implementation TCCDAccessRecord

- (TCCDAccessRecord)initWithSubject:(id)a3 object:(id)a4 authorizationValue:(unint64_t)a5 authorizationReason:(unint64_t)a6 authorizationVersion:(unint64_t)a7 lastModified:(id)a8 flags:(unint64_t)a9 replaceStoredCodeRequirement:(BOOL)a10
{
  v17 = a3;
  v18 = a4;
  v19 = a8;
  v23.receiver = self;
  v23.super_class = TCCDAccessRecord;
  v20 = [(TCCDAccessRecord *)&v23 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_subjectIdentity, a3);
    objc_storeStrong(&v21->_accessObject, a4);
    v21->_authorizationValue = a5;
    v21->_authorizationReason = a6;
    v21->_authorizationVersion = a7;
    objc_storeStrong(&v21->_lastModifiedDate, a8);
    v21->_flags = a9;
    v21->_replaceStoredCodeRequirement = a10;
  }

  return v21;
}

- (TCCDAccessRecord)initWithSubject:(id)a3 object:(id)a4 authorizationValue:(unint64_t)a5 authorizationReason:(unint64_t)a6 authorizationVersion:(unint64_t)a7 flags:(unint64_t)a8
{
  v15 = a3;
  v16 = a4;
  v20.receiver = self;
  v20.super_class = TCCDAccessRecord;
  v17 = [(TCCDAccessRecord *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_subjectIdentity, a3);
    objc_storeStrong(&v18->_accessObject, a4);
    v18->_authorizationValue = a5;
    v18->_authorizationReason = a6;
    v18->_authorizationVersion = a7;
    v18->_flags = a8;
  }

  return v18;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(TCCDAccessRecord *)self subjectIdentity];
  v6 = [(TCCDAccessRecord *)self accessObject];
  v7 = [(TCCDAccessRecord *)self authorizationValue];
  v8 = [(TCCDAccessRecord *)self authorizationReason];
  v9 = [(TCCDAccessRecord *)self authorizationValue];
  v10 = [(TCCDAccessRecord *)self lastModifiedDate];
  v11 = [(TCCDAccessRecord *)self flags];
  LOBYTE(v14) = [(TCCDAccessRecord *)self replaceStoredCodeRequirement];
  v12 = [v4 initWithSubject:v5 object:v6 authorizationValue:v7 authorizationReason:v8 authorizationVersion:v9 lastModified:v10 flags:v11 replaceStoredCodeRequirement:v14];

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
  v4 = [(TCCDAccessRecord *)self subjectIdentity];
  v5 = [v4 description];
  [v3 setObject:v5 forKeyedSubscript:@"Sub"];

  v6 = [(TCCDAccessRecord *)self accessObject];
  v7 = [v6 description];
  [v3 setObject:v7 forKeyedSubscript:@"Obj"];

  v8 = [(TCCDAccessRecord *)self accessObject];
  v9 = [v8 serviceObject];
  v10 = [v9 descriptionForAuthorizationValue:-[TCCDAccessRecord authorizationValue](self reason:{"authorizationValue"), -[TCCDAccessRecord authorizationReason](self, "authorizationReason")}];
  [v3 setObject:v10 forKeyedSubscript:@"Auth"];

  v11 = [NSString stringWithFormat:@"%llu", [(TCCDAccessRecord *)self authorizationVersion]];
  [v3 setObject:v11 forKeyedSubscript:@"AuthVersion"];

  v12 = [(TCCDAccessRecord *)self _dateFormatter];
  v13 = [(TCCDAccessRecord *)self lastModifiedDate];
  v14 = [v12 stringFromDate:v13];
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
  v2 = [(TCCDAccessRecord *)self descriptionDictionary];
  v3 = [v2 description];

  return v3;
}

@end