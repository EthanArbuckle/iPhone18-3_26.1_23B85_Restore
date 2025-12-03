@interface TPSCellularNetworksResponse
+ (id)unarchivedObjectClasses;
+ (id)unarchivedObjectFromData:(id)data error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToResponse:(id)response;
- (TPSCellularNetworksResponse)initWithCoder:(id)coder;
- (TPSCellularNetworksResponse)initWithSubscriptionContext:(id)context error:(id)error;
- (TPSCellularNetworksResponse)initWithSubscriptionContext:(id)context error:(id)error cellularNetworks:(id)networks;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TPSCellularNetworksResponse

- (TPSCellularNetworksResponse)initWithSubscriptionContext:(id)context error:(id)error
{
  [(TPSCellularNetworksResponse *)self doesNotRecognizeSelector:a2, error];

  return 0;
}

- (TPSCellularNetworksResponse)initWithSubscriptionContext:(id)context error:(id)error cellularNetworks:(id)networks
{
  networksCopy = networks;
  v13.receiver = self;
  v13.super_class = TPSCellularNetworksResponse;
  v9 = [(TPSResponse *)&v13 initWithSubscriptionContext:context error:error];
  if (v9)
  {
    v10 = [networksCopy copy];
    cellularNetworks = v9->_cellularNetworks;
    v9->_cellularNetworks = v10;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v9.receiver = self;
  v9.super_class = TPSCellularNetworksResponse;
  v5 = [(TPSResponse *)&v9 copyWithZone:?];
  v6 = [(NSArray *)self->_cellularNetworks copyWithZone:zone];
  v7 = v5[3];
  v5[3] = v6;

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = TPSCellularNetworksResponse;
  coderCopy = coder;
  [(TPSResponse *)&v7 encodeWithCoder:coderCopy];
  cellularNetworks = self->_cellularNetworks;
  v6 = NSStringFromSelector(sel_cellularNetworks);
  [coderCopy encodeObject:cellularNetworks forKey:{v6, v7.receiver, v7.super_class}];
}

- (TPSCellularNetworksResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = TPSCellularNetworksResponse;
  v5 = [(TPSResponse *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = NSStringFromSelector(sel_cellularNetworks);
    v10 = [coderCopy decodeObjectOfClasses:v8 forKey:v9];
    cellularNetworks = v5->_cellularNetworks;
    v5->_cellularNetworks = v10;
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
  v8 = NSStringFromSelector(sel_cellularNetworks);
  [v3 appendFormat:@"%@=%@", v8, self->_cellularNetworks];

  [v3 appendFormat:@">"];
  v9 = [v3 copy];

  return v9;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = TPSCellularNetworksResponse;
  v3 = [(TPSResponse *)&v7 hash];
  cellularNetworks = [(TPSCellularNetworksResponse *)self cellularNetworks];
  v5 = [cellularNetworks hash];

  return v5 ^ v3;
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TPSCellularNetworksResponse *)self isEqualToResponse:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToResponse:(id)response
{
  responseCopy = response;
  v9.receiver = self;
  v9.super_class = TPSCellularNetworksResponse;
  if ([(TPSResponse *)&v9 isEqualToResponse:responseCopy])
  {
    cellularNetworks = [(TPSCellularNetworksResponse *)self cellularNetworks];
    cellularNetworks2 = [responseCopy cellularNetworks];
    v7 = (cellularNetworks | cellularNetworks2) == 0;
    if (cellularNetworks2)
    {
      v7 = [cellularNetworks isEqual:cellularNetworks2];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)unarchivedObjectClasses
{
  v11[3] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CBEB58]);
  v10.receiver = self;
  v10.super_class = &OBJC_METACLASS___TPSCellularNetworksResponse;
  v4 = objc_msgSendSuper2(&v10, sel_unarchivedObjectClasses);
  v5 = [v3 initWithSet:v4];

  v11[0] = objc_opt_class();
  v11[1] = objc_opt_class();
  v11[2] = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:3];
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