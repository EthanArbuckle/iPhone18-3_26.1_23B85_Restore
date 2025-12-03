@interface TSUDispatchData
- (OS_dispatch_data)data;
- (TSUDispatchData)initWithData:(id)data;
- (void)append:(id)append;
@end

@implementation TSUDispatchData

- (TSUDispatchData)initWithData:(id)data
{
  dataCopy = data;
  if (dataCopy)
  {
    v10.receiver = self;
    v10.super_class = TSUDispatchData;
    v6 = [(TSUDispatchData *)&v10 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_data, data);
      v7->_size = dispatch_data_get_size(dataCopy);
      objc_storeStrong(&v7->_fragmentedData, data);
      v7->_fragmentsCount = v7->_size != 0;
      v7->_maxFragmentsCount = 1000;
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)append:(id)append
{
  size = append;
  v5 = size;
  if (size)
  {
    data2 = size;
    size = dispatch_data_get_size(size);
    v5 = data2;
    if (size)
    {
      v6 = size;
      concat = dispatch_data_create_concat(self->_fragmentedData, data2);
      fragmentedData = self->_fragmentedData;
      self->_fragmentedData = concat;

      maxFragmentsCount = self->_maxFragmentsCount;
      self->_size += v6;
      v10 = self->_fragmentsCount + 1;
      self->_fragmentsCount = v10;
      if (v10 >= maxFragmentsCount)
      {
        map = dispatch_data_create_map(self->_fragmentedData, 0, 0);
        objc_storeStrong(&self->_fragmentedData, MEMORY[0x277D85CC8]);
        self->_fragmentsCount = 0;
        defragmentedData = self->_defragmentedData;
        if (defragmentedData)
        {
          v13 = dispatch_data_create_concat(defragmentedData, map);
        }

        else
        {
          v13 = map;
        }

        v14 = self->_defragmentedData;
        self->_defragmentedData = v13;

        objc_storeStrong(&self->_data, self->_defragmentedData);
      }

      else
      {
        map = self->_data;
        self->_data = 0;
      }

      v5 = data2;
    }
  }

  MEMORY[0x2821F96F8](size, v5);
}

- (OS_dispatch_data)data
{
  if (!self->_data)
  {
    fragmentedData = self->_fragmentedData;
    defragmentedData = self->_defragmentedData;
    if (defragmentedData)
    {
      concat = dispatch_data_create_concat(defragmentedData, fragmentedData);
    }

    else
    {
      concat = fragmentedData;
    }

    data = self->_data;
    self->_data = concat;
  }

  v7 = self->_data;

  return v7;
}

@end