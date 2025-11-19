@interface TPSCellularNetworksResponse
+ (id)unarchivedObjectClasses;
+ (id)unarchivedObjectFromData:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToResponse:(id)a3;
- (TPSCellularNetworksResponse)initWithCoder:(id)a3;
- (TPSCellularNetworksResponse)initWithSubscriptionContext:(id)a3 error:(id)a4;
- (TPSCellularNetworksResponse)initWithSubscriptionContext:(id)a3 error:(id)a4 cellularNetworks:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TPSCellularNetworksResponse

- (TPSCellularNetworksResponse)initWithSubscriptionContext:(id)a3 error:(id)a4
{
  [(TPSCellularNetworksResponse *)self doesNotRecognizeSelector:a2, a4];

  return 0;
}

- (TPSCellularNetworksResponse)initWithSubscriptionContext:(id)a3 error:(id)a4 cellularNetworks:(id)a5
{
  v8 = a5;
  v13.receiver = self;
  v13.super_class = TPSCellularNetworksResponse;
  v9 = [(TPSResponse *)&v13 initWithSubscriptionContext:a3 error:a4];
  if (v9)
  {
    v10 = [v8 copy];
    cellularNetworks = v9->_cellularNetworks;
    v9->_cellularNetworks = v10;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v9.receiver = self;
  v9.super_class = TPSCellularNetworksResponse;
  v5 = [(TPSResponse *)&v9 copyWithZone:?];
  v6 = [(NSArray *)self->_cellularNetworks copyWithZone:a3];
  v7 = v5[3];
  v5[3] = v6;

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = TPSCellularNetworksResponse;
  v4 = a3;
  [(TPSResponse *)&v7 encodeWithCoder:v4];
  cellularNetworks = self->_cellularNetworks;
  v6 = NSStringFromSelector(sel_cellularNetworks);
  [v4 encodeObject:cellularNetworks forKey:{v6, v7.receiver, v7.super_class}];
}

- (TPSCellularNetworksResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = TPSCellularNetworksResponse;
  v5 = [(TPSResponse *)&v13 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = NSStringFromSelector(sel_cellularNetworks);
    v10 = [v4 decodeObjectOfClasses:v8 forKey:v9];
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
  v5 = [(TPSResponse *)self subscriptionContext];
  [v3 appendFormat:@"%@=%@", v4, v5];

  [v3 appendFormat:@", "];
  v6 = NSStringFromSelector(sel_error);
  v7 = [(TPSResponse *)self error];
  [v3 appendFormat:@"%@=%@", v6, v7];

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
  v4 = [(TPSCellularNetworksResponse *)self cellularNetworks];
  v5 = [v4 hash];

  return v5 ^ v3;
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TPSCellularNetworksResponse *)self isEqualToResponse:v4];
  }

  return v5;
}

- (BOOL)isEqualToResponse:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TPSCellularNetworksResponse;
  if ([(TPSResponse *)&v9 isEqualToResponse:v4])
  {
    v5 = [(TPSCellularNetworksResponse *)self cellularNetworks];
    v6 = [v4 cellularNetworks];
    v7 = (v5 | v6) == 0;
    if (v6)
    {
      v7 = [v5 isEqual:v6];
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
  v10.receiver = a1;
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

+ (id)unarchivedObjectFromData:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x277CCAAC8];
  v7 = a3;
  v8 = [a1 unarchivedObjectClasses];
  v9 = [v6 unarchivedObjectOfClasses:v8 fromData:v7 error:a4];

  return v9;
}

@end