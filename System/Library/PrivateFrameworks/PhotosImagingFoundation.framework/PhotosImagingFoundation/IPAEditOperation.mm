@interface IPAEditOperation
+ (id)_identifierForUUIDMap;
+ (id)_mapDispatchQueue;
+ (id)_uuidForIdentifierMap;
+ (id)operationIdentifierForUUID:(id)d;
+ (id)operationUUIDForIdentifier:(id)identifier;
+ (id)presetifyAdjustment:(id)adjustment;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToOperation:(id)operation;
- (IPAEditOperation)init;
- (IPAEditOperation)initWithSettingsDictionary:(id)dictionary;
- (NSString)debugDescription;
- (id)UUID;
- (id)archivalRepresentation;
- (id)copyWithZone:(_NSZone *)zone;
- (id)identifier;
- (id)settingsDictionary;
@end

@implementation IPAEditOperation

- (NSString)debugDescription
{
  v3 = objc_alloc(MEMORY[0x277CCAB68]);
  v4 = objc_opt_class();
  identifier = [(IPAEditOperation *)self identifier];
  v6 = [v3 initWithFormat:@"<%@:%p %@>", v4, self, identifier];

  return v6;
}

- (id)settingsDictionary
{
  v2 = objc_opt_class();
  NSStringFromClass(v2);
  objc_claimAutoreleasedReturnValue();
  v3 = _PFAssertFailHandler();
  return [(IPAEditOperation *)v3 UUID];
}

- (id)UUID
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  v3 = +[IPAEditOperation _mapDispatchQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __24__IPAEditOperation_UUID__block_invoke;
  v6[3] = &unk_279A26440;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __24__IPAEditOperation_UUID__block_invoke(uint64_t a1)
{
  v2 = +[IPAEditOperation _uuidForIdentifierMap];
  v3 = [*(a1 + 32) identifier];
  v4 = [v2 objectForKeyedSubscript:v3];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v7 = [MEMORY[0x277CCAD78] UUID];
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v10 = *(*(*(a1 + 40) + 8) + 40);
    v11 = +[IPAEditOperation _uuidForIdentifierMap];
    v12 = [*(a1 + 32) identifier];
    [v11 setObject:v10 forKeyedSubscript:v12];

    v14 = [*(a1 + 32) identifier];
    v13 = +[IPAEditOperation _identifierForUUIDMap];
    [v13 setObject:v14 forKeyedSubscript:*(*(*(a1 + 40) + 8) + 40)];
  }
}

- (id)identifier
{
  v2 = objc_opt_class();
  NSStringFromClass(v2);
  objc_claimAutoreleasedReturnValue();
  v3 = _PFAssertFailHandler();
  return [(IPAEditOperation *)v3 isEqualToOperation:v4, v5];
}

- (BOOL)isEqualToOperation:(id)operation
{
  if (self == operation)
  {
    return 1;
  }

  operationCopy = operation;
  identifier = [(IPAEditOperation *)self identifier];
  identifier2 = [operationCopy identifier];

  LOBYTE(operationCopy) = [identifier isEqualToString:identifier2];
  return operationCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(IPAEditOperation *)self isEqualToOperation:equalCopy];

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];

  return [v4 initWithOperation:self];
}

- (IPAEditOperation)initWithSettingsDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = objc_opt_class();
  NSStringFromClass(v4);
  objc_claimAutoreleasedReturnValue();
  v5 = _PFAssertFailHandler();
  return [(IPAEditOperation *)v5 initWithOperation:v6, v7];
}

- (IPAEditOperation)init
{
  v3.receiver = self;
  v3.super_class = IPAEditOperation;
  return [(IPAEditOperation *)&v3 init];
}

+ (id)_mapDispatchQueue
{
  if (_mapDispatchQueue_onceToken != -1)
  {
    dispatch_once(&_mapDispatchQueue_onceToken, &__block_literal_global_8);
  }

  v3 = _mapDispatchQueue_queue;

  return v3;
}

uint64_t __37__IPAEditOperation__mapDispatchQueue__block_invoke()
{
  _mapDispatchQueue_queue = dispatch_queue_create("com.apple.photos.IPAEditOperation.mapDispatchQueue", 0);

  return MEMORY[0x2821F96F8]();
}

+ (id)_uuidForIdentifierMap
{
  if (_uuidForIdentifierMap_onceToken != -1)
  {
    dispatch_once(&_uuidForIdentifierMap_onceToken, &__block_literal_global_6);
  }

  v3 = _uuidForIdentifierMap_map;

  return v3;
}

uint64_t __41__IPAEditOperation__uuidForIdentifierMap__block_invoke()
{
  _uuidForIdentifierMap_map = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

+ (id)_identifierForUUIDMap
{
  if (_identifierForUUIDMap_onceToken != -1)
  {
    dispatch_once(&_identifierForUUIDMap_onceToken, &__block_literal_global_1267);
  }

  v3 = _identifierForUUIDMap_map;

  return v3;
}

uint64_t __41__IPAEditOperation__identifierForUUIDMap__block_invoke()
{
  _identifierForUUIDMap_map = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

+ (id)operationUUIDForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = __Block_byref_object_copy_;
    v14 = __Block_byref_object_dispose_;
    v15 = 0;
    v4 = +[IPAEditOperation _mapDispatchQueue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __47__IPAEditOperation_operationUUIDForIdentifier___block_invoke;
    v7[3] = &unk_279A26440;
    v9 = &v10;
    v8 = identifierCopy;
    dispatch_sync(v4, v7);

    v5 = v11[5];
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __47__IPAEditOperation_operationUUIDForIdentifier___block_invoke(uint64_t a1)
{
  v2 = +[IPAEditOperation _uuidForIdentifierMap];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v6 = [MEMORY[0x277CCAD78] UUID];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v9 = *(*(*(a1 + 40) + 8) + 40);
    v10 = +[IPAEditOperation _uuidForIdentifierMap];
    [v10 setObject:v9 forKeyedSubscript:*(a1 + 32)];

    v11 = *(a1 + 32);
    v12 = +[IPAEditOperation _identifierForUUIDMap];
    [v12 setObject:v11 forKeyedSubscript:*(*(*(a1 + 40) + 8) + 40)];
  }
}

+ (id)operationIdentifierForUUID:(id)d
{
  dCopy = d;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  v16 = 0;
  v4 = +[IPAEditOperation _mapDispatchQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47__IPAEditOperation_operationIdentifierForUUID___block_invoke;
  v8[3] = &unk_279A26440;
  v9 = dCopy;
  v10 = &v11;
  v5 = dCopy;
  dispatch_sync(v4, v8);

  v6 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v6;
}

void __47__IPAEditOperation_operationIdentifierForUUID___block_invoke(uint64_t a1)
{
  v5 = +[IPAEditOperation _identifierForUUIDMap];
  v2 = [v5 objectForKeyedSubscript:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)archivalRepresentation
{
  v2 = objc_opt_class();
  NSStringFromClass(v2);
  objc_claimAutoreleasedReturnValue();
  v3 = _PFAssertFailHandler();
  return [(IPAEditOperation *)v3 presetifyAdjustment:v4, v5];
}

+ (id)presetifyAdjustment:(id)adjustment
{
  adjustmentCopy = adjustment;
  v4 = objc_opt_class();
  NSStringFromClass(v4);
  objc_claimAutoreleasedReturnValue();
  v5 = _PFAssertFailHandler();
  [(IPARegion *)v5 area];
  return result;
}

@end