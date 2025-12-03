@interface PSUICellularPlanUniversalReference
+ (id)referenceFromCellularPlanPendingTransfer:(id)transfer;
+ (id)referenceFromDanglingPlanItem:(id)item;
+ (id)referenceFromPlanItem:(id)item;
- (BOOL)isEqual:(id)equal;
- (PSUICellularPlanUniversalReference)init;
- (PSUICellularPlanUniversalReference)initWithCoder:(id)coder;
- (PSUICellularPlanUniversalReference)initWithIccid:(id)iccid;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation PSUICellularPlanUniversalReference

+ (id)referenceFromPlanItem:(id)item
{
  itemCopy = item;
  v4 = [PSUICellularPlanUniversalReference alloc];
  iccid = [itemCopy iccid];

  v6 = [(PSUICellularPlanUniversalReference *)v4 initWithIccid:iccid];

  return v6;
}

+ (id)referenceFromDanglingPlanItem:(id)item
{
  itemCopy = item;
  v4 = [PSUICellularPlanUniversalReference alloc];
  iccid = [itemCopy iccid];

  v6 = [(PSUICellularPlanUniversalReference *)v4 initWithIccid:iccid];

  return v6;
}

+ (id)referenceFromCellularPlanPendingTransfer:(id)transfer
{
  v3 = MEMORY[0x277CCACA8];
  sourceIccid = [transfer sourceIccid];
  v5 = [v3 stringWithFormat:@"TRANSFER:%@", sourceIccid];

  v6 = [[PSUICellularPlanUniversalReference alloc] initWithIccid:v5];

  return v6;
}

- (PSUICellularPlanUniversalReference)initWithCoder:(id)coder
{
  v4 = [coder decodeObjectForKey:@"ICCID_KEY"];
  v5 = [(PSUICellularPlanUniversalReference *)self initWithIccid:v4];

  return v5;
}

- (PSUICellularPlanUniversalReference)initWithIccid:(id)iccid
{
  iccidCopy = iccid;
  v9.receiver = self;
  v9.super_class = PSUICellularPlanUniversalReference;
  v6 = [(PSUICellularPlanUniversalReference *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_iccid, iccid);
  }

  return v7;
}

- (PSUICellularPlanUniversalReference)init
{
  v5 = *MEMORY[0x277D85DE8];
  getLogger = [(PSUICellularPlanUniversalReference *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_ERROR))
  {
    v3 = 136315138;
    v4 = "[PSUICellularPlanUniversalReference init]";
    _os_log_error_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_ERROR, "Error: unsupported initializer called: %s", &v3, 0xCu);
  }

  objc_exception_throw([objc_alloc(MEMORY[0x277CBEAD8]) initWithName:@"Unsupported initializer" reason:@"Unsupported initializer called" userInfo:0]);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [PSUICellularPlanUniversalReference alloc];
  iccid = self->_iccid;

  return [(PSUICellularPlanUniversalReference *)v4 initWithIccid:iccid];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    iccid = self->_iccid;
    iccid = [equalCopy iccid];
    v7 = [(NSString *)iccid isEqualToString:iccid];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end