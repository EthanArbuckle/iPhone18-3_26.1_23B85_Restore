@interface SPKeyIndexMap
- (SPKeyIndexMap)init;
- (SPKeyIndexMap)initWithBeaconIdentifier:(id)a3 keySequence:(unsigned __int8)a4 mapHandle:(id *)a5;
- (id)headerString;
- (void)dealloc;
@end

@implementation SPKeyIndexMap

- (SPKeyIndexMap)init
{
  [(SPKeyIndexMap *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)dealloc
{
  sp_key_index_map_destroy(self->_mapHandle);
  v3.receiver = self;
  v3.super_class = SPKeyIndexMap;
  [(SPKeyIndexMap *)&v3 dealloc];
}

- (SPKeyIndexMap)initWithBeaconIdentifier:(id)a3 keySequence:(unsigned __int8)a4 mapHandle:(id *)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = SPKeyIndexMap;
  v10 = [(SPKeyIndexMap *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_beaconIdentifier, a3);
    v11->_sequence = a4;
    v11->_mapHandle = a5;
  }

  return v11;
}

- (id)headerString
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  [v3 appendFormat:@"version: %u, ", sp_key_index_map_get_version(self->_mapHandle)];
  [v3 appendFormat:@"first-index: %u, ", sp_key_index_map_get_first_index(self->_mapHandle)];
  [v3 appendFormat:@"last-index: %u, ", sp_key_index_map_get_last_index(self->_mapHandle)];

  return v3;
}

@end