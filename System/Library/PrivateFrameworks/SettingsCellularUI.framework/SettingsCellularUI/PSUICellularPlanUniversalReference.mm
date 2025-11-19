@interface PSUICellularPlanUniversalReference
+ (id)referenceFromCellularPlanPendingTransfer:(id)a3;
+ (id)referenceFromDanglingPlanItem:(id)a3;
+ (id)referenceFromPlanItem:(id)a3;
- (BOOL)isEqual:(id)a3;
- (PSUICellularPlanUniversalReference)init;
- (PSUICellularPlanUniversalReference)initWithCoder:(id)a3;
- (PSUICellularPlanUniversalReference)initWithIccid:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation PSUICellularPlanUniversalReference

+ (id)referenceFromPlanItem:(id)a3
{
  v3 = a3;
  v4 = [PSUICellularPlanUniversalReference alloc];
  v5 = [v3 iccid];

  v6 = [(PSUICellularPlanUniversalReference *)v4 initWithIccid:v5];

  return v6;
}

+ (id)referenceFromDanglingPlanItem:(id)a3
{
  v3 = a3;
  v4 = [PSUICellularPlanUniversalReference alloc];
  v5 = [v3 iccid];

  v6 = [(PSUICellularPlanUniversalReference *)v4 initWithIccid:v5];

  return v6;
}

+ (id)referenceFromCellularPlanPendingTransfer:(id)a3
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [a3 sourceIccid];
  v5 = [v3 stringWithFormat:@"TRANSFER:%@", v4];

  v6 = [[PSUICellularPlanUniversalReference alloc] initWithIccid:v5];

  return v6;
}

- (PSUICellularPlanUniversalReference)initWithCoder:(id)a3
{
  v4 = [a3 decodeObjectForKey:@"ICCID_KEY"];
  v5 = [(PSUICellularPlanUniversalReference *)self initWithIccid:v4];

  return v5;
}

- (PSUICellularPlanUniversalReference)initWithIccid:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PSUICellularPlanUniversalReference;
  v6 = [(PSUICellularPlanUniversalReference *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_iccid, a3);
  }

  return v7;
}

- (PSUICellularPlanUniversalReference)init
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = [(PSUICellularPlanUniversalReference *)self getLogger];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = 136315138;
    v4 = "[PSUICellularPlanUniversalReference init]";
    _os_log_error_impl(&dword_2658DE000, v2, OS_LOG_TYPE_ERROR, "Error: unsupported initializer called: %s", &v3, 0xCu);
  }

  objc_exception_throw([objc_alloc(MEMORY[0x277CBEAD8]) initWithName:@"Unsupported initializer" reason:@"Unsupported initializer called" userInfo:0]);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [PSUICellularPlanUniversalReference alloc];
  iccid = self->_iccid;

  return [(PSUICellularPlanUniversalReference *)v4 initWithIccid:iccid];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    iccid = self->_iccid;
    v6 = [v4 iccid];
    v7 = [(NSString *)iccid isEqualToString:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end