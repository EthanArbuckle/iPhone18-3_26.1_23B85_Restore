@interface SVDDeviceUnit
- (BOOL)isEqual:(id)equal;
- (SVDDeviceUnit)initWithCoder:(id)coder;
- (SVDDeviceUnit)initWithDeviceUnit:(id)unit;
- (SVDDeviceUnit)initWithIdentifier:(id)identifier assistantId:(id)id builder:(id)builder;
- (SVDDeviceUnit)initWithIdentifier:(id)identifier assistantId:(id)id name:(id)name roomName:(id)roomName proximity:(int64_t)proximity;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
@end

@implementation SVDDeviceUnit

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = [(SVDDeviceUnit *)self hash];
  LOBYTE(v6) = v6 == [v5 hash];

  return v6;
}

- (unint64_t)hash
{
  identifier = [(SVDDeviceUnit *)self identifier];
  v4 = [identifier hash];
  assistantId = [(SVDDeviceUnit *)self assistantId];
  v6 = [assistantId hash];

  return v6 + v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SVDDeviceUnit alloc];
  identifier = [(SVDDeviceUnit *)self identifier];
  assistantId = [(SVDDeviceUnit *)self assistantId];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __30__SVDDeviceUnit_copyWithZone___block_invoke;
  v9[3] = &unk_279C717A0;
  v9[4] = self;
  v7 = [(SVDDeviceUnit *)v4 initWithIdentifier:identifier assistantId:assistantId builder:v9];

  return v7;
}

void __30__SVDDeviceUnit_copyWithZone___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 name];
  [v4 setName:v5];

  v6 = [*(a1 + 32) roomName];
  [v4 setRoomName:v6];

  [v4 setProximity:{objc_msgSend(*(a1 + 32), "proximity")}];
  v7 = [*(a1 + 32) mediaRouteIdentifier];
  [v4 setMediaRouteIdentifier:v7];

  [v4 setIsCommunalDevice:{objc_msgSend(*(a1 + 32), "isCommunalDevice")}];
  v8 = [*(a1 + 32) homeKitAccessoryIdentifier];
  [v4 setHomeKitAccessoryIdentifier:v8];
}

- (SVDDeviceUnit)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = SVDDeviceUnit;
  v5 = [(SVDDeviceUnit *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"backing"];
    backing = v5->_backing;
    v5->_backing = v6;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  identifier = [(SVDDeviceUnit *)self identifier];
  assistantId = [(SVDDeviceUnit *)self assistantId];
  name = [(SVDDeviceUnit *)self name];
  roomName = [(SVDDeviceUnit *)self roomName];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{-[SVDDeviceUnit proximity](self, "proximity")}];
  mediaRouteIdentifier = [(SVDDeviceUnit *)self mediaRouteIdentifier];
  isCommunalDevice = [(SVDDeviceUnit *)self isCommunalDevice];
  homeKitAccessoryIdentifier = [(SVDDeviceUnit *)self homeKitAccessoryIdentifier];
  v12 = [v3 stringWithFormat:@"identifier:%@, assistantId:%@, name:%@, roomName:%@, proximity:%@, mediaRouteId:%@, isCommunalDevice:%d, homeKitId:%@", identifier, assistantId, name, roomName, v8, mediaRouteIdentifier, isCommunalDevice, homeKitAccessoryIdentifier];

  return v12;
}

- (SVDDeviceUnit)initWithDeviceUnit:(id)unit
{
  unitCopy = unit;
  v9.receiver = self;
  v9.super_class = SVDDeviceUnit;
  v6 = [(SVDDeviceUnit *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_backing, unit);
  }

  return v7;
}

- (SVDDeviceUnit)initWithIdentifier:(id)identifier assistantId:(id)id name:(id)name roomName:(id)roomName proximity:(int64_t)proximity
{
  nameCopy = name;
  roomNameCopy = roomName;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __72__SVDDeviceUnit_initWithIdentifier_assistantId_name_roomName_proximity___block_invoke;
  v18[3] = &unk_279C71778;
  v19 = nameCopy;
  v20 = roomNameCopy;
  proximityCopy = proximity;
  v14 = roomNameCopy;
  v15 = nameCopy;
  v16 = [(SVDDeviceUnit *)self initWithIdentifier:identifier assistantId:id builder:v18];

  return v16;
}

void __72__SVDDeviceUnit_initWithIdentifier_assistantId_name_roomName_proximity___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  [v4 setName:v3];
  [v4 setRoomName:a1[5]];
  [v4 setProximity:a1[6]];
}

- (SVDDeviceUnit)initWithIdentifier:(id)identifier assistantId:(id)id builder:(id)builder
{
  identifierCopy = identifier;
  idCopy = id;
  builderCopy = builder;
  v18.receiver = self;
  v18.super_class = SVDDeviceUnit;
  v11 = [(SVDDeviceUnit *)&v18 init];
  if (v11)
  {
    v12 = [SVDDeviceUnitSwift alloc];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __56__SVDDeviceUnit_initWithIdentifier_assistantId_builder___block_invoke;
    v16[3] = &unk_279C71750;
    v17 = builderCopy;
    v13 = [(SVDDeviceUnitSwift *)v12 initWithIdentifier:identifierCopy assistantId:idCopy builder:v16];
    backing = v11->_backing;
    v11->_backing = v13;
  }

  return v11;
}

void __56__SVDDeviceUnit_initWithIdentifier_assistantId_builder___block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 32))
  {
    v3 = a2;
    v8 = objc_alloc_init(_SVDMutableDeviceUnit);
    (*(*(a1 + 32) + 16))();
    v4 = [(_SVDMutableDeviceUnit *)v8 name];
    [v3 setName:v4];

    v5 = [(_SVDMutableDeviceUnit *)v8 roomName];
    [v3 setRoomName:v5];

    [v3 setProximity:{-[_SVDMutableDeviceUnit proximity](v8, "proximity")}];
    v6 = [(_SVDMutableDeviceUnit *)v8 mediaRouteIdentifier];
    [v3 setMediaRouteIdentifier:v6];

    [v3 setIsCommunalDevice:{-[_SVDMutableDeviceUnit isCommunalDevice](v8, "isCommunalDevice")}];
    v7 = [(_SVDMutableDeviceUnit *)v8 homeKitAccessoryIdentifier];
    [v3 setHomeKitAccessoryIdentifier:v7];
  }
}

@end