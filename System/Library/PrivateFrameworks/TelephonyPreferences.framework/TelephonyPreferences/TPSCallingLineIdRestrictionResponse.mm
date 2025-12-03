@interface TPSCallingLineIdRestrictionResponse
+ (id)unarchivedObjectClasses;
+ (id)unarchivedObjectFromData:(id)data error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToResponse:(id)response;
- (TPSCallingLineIdRestrictionResponse)initWithCoder:(id)coder;
- (TPSCallingLineIdRestrictionResponse)initWithSubscriptionContext:(id)context error:(id)error;
- (TPSCallingLineIdRestrictionResponse)initWithsubscriptionContext:(id)context editable:(BOOL)editable state:(int64_t)state error:(id)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TPSCallingLineIdRestrictionResponse

- (TPSCallingLineIdRestrictionResponse)initWithSubscriptionContext:(id)context error:(id)error
{
  [(TPSCallingLineIdRestrictionResponse *)self doesNotRecognizeSelector:a2, error];

  return 0;
}

- (TPSCallingLineIdRestrictionResponse)initWithsubscriptionContext:(id)context editable:(BOOL)editable state:(int64_t)state error:(id)error
{
  v9.receiver = self;
  v9.super_class = TPSCallingLineIdRestrictionResponse;
  result = [(TPSResponse *)&v9 initWithSubscriptionContext:context error:error];
  if (result)
  {
    result->_editable = editable;
    result->_state = state;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5.receiver = self;
  v5.super_class = TPSCallingLineIdRestrictionResponse;
  result = [(TPSResponse *)&v5 copyWithZone:zone];
  *(result + 24) = self->_editable;
  *(result + 4) = self->_state;
  return result;
}

- (void)encodeWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = TPSCallingLineIdRestrictionResponse;
  coderCopy = coder;
  [(TPSResponse *)&v9 encodeWithCoder:coderCopy];
  editable = self->_editable;
  v6 = NSStringFromSelector(sel_editable);
  [coderCopy encodeBool:editable forKey:{v6, v9.receiver, v9.super_class}];

  state = self->_state;
  v8 = NSStringFromSelector(sel_state);
  [coderCopy encodeInteger:state forKey:v8];
}

- (TPSCallingLineIdRestrictionResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = TPSCallingLineIdRestrictionResponse;
  v5 = [(TPSResponse *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = NSStringFromSelector(sel_editable);
    v5->_editable = [coderCopy decodeBoolForKey:v6];

    v7 = NSStringFromSelector(sel_state);
    v5->_state = [coderCopy decodeIntegerForKey:v7];
  }

  return v5;
}

- (id)debugDescription
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  [v3 appendFormat:@"<%@ %p ", objc_opt_class(), self];
  v4 = NSStringFromSelector(sel_subscriptionContext);
  subscriptionContext = [(TPSResponse *)self subscriptionContext];
  [v3 appendFormat:@"%@=%@", v4, subscriptionContext];

  [v3 appendFormat:@", "];
  v6 = NSStringFromSelector(sel_error);
  error = [(TPSResponse *)self error];
  [v3 appendFormat:@"%@=%@", v6, error];

  [v3 appendFormat:@", "];
  v8 = NSStringFromSelector(sel_editable);
  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[TPSCallingLineIdRestrictionResponse isEditable](self, "isEditable")}];
  [v3 appendFormat:@"%@=%@", v8, v9];

  [v3 appendFormat:@", "];
  v10 = NSStringFromSelector(sel_state);
  v11 = [MEMORY[0x277CCACA8] tps_stringWithTPSCallingLineIdRestrictionState:{-[TPSCallingLineIdRestrictionResponse state](self, "state")}];
  [v3 appendFormat:@"%@=%@", v10, v11];

  [v3 appendFormat:@">"];
  v12 = [v3 copy];

  return v12;
}

- (unint64_t)hash
{
  v6.receiver = self;
  v6.super_class = TPSCallingLineIdRestrictionResponse;
  v3 = [(TPSResponse *)&v6 hash];
  isEditable = [(TPSCallingLineIdRestrictionResponse *)self isEditable];
  return v3 ^ isEditable ^ [(TPSCallingLineIdRestrictionResponse *)self state];
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TPSCallingLineIdRestrictionResponse *)self isEqualToResponse:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToResponse:(id)response
{
  responseCopy = response;
  v9.receiver = self;
  v9.super_class = TPSCallingLineIdRestrictionResponse;
  if (-[TPSResponse isEqualToResponse:](&v9, sel_isEqualToResponse_, responseCopy) && (v5 = -[TPSCallingLineIdRestrictionResponse isEditable](self, "isEditable"), v5 == [responseCopy isEditable]))
  {
    state = [(TPSCallingLineIdRestrictionResponse *)self state];
    v6 = state == [responseCopy state];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)unarchivedObjectClasses
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CBEB58]);
  v10.receiver = self;
  v10.super_class = &OBJC_METACLASS___TPSCallingLineIdRestrictionResponse;
  v4 = objc_msgSendSuper2(&v10, sel_unarchivedObjectClasses);
  v5 = [v3 initWithSet:v4];

  v11[0] = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  [v5 addObjectsFromArray:v6];

  v7 = [v5 copy];
  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)unarchivedObjectFromData:(id)data error:(id *)error
{
  v6 = MEMORY[0x277CCAAC8];
  dataCopy = data;
  unarchivedObjectClasses = [self unarchivedObjectClasses];
  v9 = [v6 unarchivedObjectOfClasses:unarchivedObjectClasses fromData:dataCopy error:error];

  return v9;
}

@end