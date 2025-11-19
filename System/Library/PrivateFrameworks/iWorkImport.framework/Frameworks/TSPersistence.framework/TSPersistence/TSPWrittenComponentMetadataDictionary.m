@interface TSPWrittenComponentMetadataDictionary
- (TSPWrittenComponentMetadataDictionary)init;
- (TSPWrittenComponentMetadataDictionary)initWithCapacity:(unint64_t)a3;
- (id)metadataForComponentIdentifier:(int64_t)a3;
- (void)dealloc;
- (void)enumerateMetadataUsingBlock:(id)a3;
- (void)setMetadata:(id)a3 forComponentIdentifier:(int64_t)a4;
@end

@implementation TSPWrittenComponentMetadataDictionary

- (TSPWrittenComponentMetadataDictionary)init
{
  v3.receiver = self;
  v3.super_class = TSPWrittenComponentMetadataDictionary;
  if ([(TSPWrittenComponentMetadataDictionary *)&v3 init])
  {
    operator new();
  }

  return 0;
}

- (TSPWrittenComponentMetadataDictionary)initWithCapacity:(unint64_t)a3
{
  v4.receiver = self;
  v4.super_class = TSPWrittenComponentMetadataDictionary;
  if ([(TSPWrittenComponentMetadataDictionary *)&v4 init])
  {
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  map = self->_map;
  if (map)
  {
    v4 = sub_2769ABBE4(map);
    MEMORY[0x277C9F670](v4, 0x10A0C408EF24B1CLL);
  }

  v5.receiver = self;
  v5.super_class = TSPWrittenComponentMetadataDictionary;
  [(TSPWrittenComponentMetadataDictionary *)&v5 dealloc];
}

- (void)setMetadata:(id)a3 forComponentIdentifier:(int64_t)a4
{
  a3;
  map = self->_map;
  sub_2769DB7AC();
}

- (id)metadataForComponentIdentifier:(int64_t)a3
{
  v5 = a3;
  v3 = sub_2769ABC64(self->_map, &v5);
  if (v3)
  {
    v3 = v3[3];
  }

  return v3;
}

- (void)enumerateMetadataUsingBlock:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v6 = 0;
    v5 = self->_map + 16;
    do
    {
      v5 = *v5;
      if (!v5)
      {
        break;
      }

      (*(v4 + 2))(v4, v5[2], v5[3], &v6);
    }

    while ((v6 & 1) == 0);
  }
}

@end