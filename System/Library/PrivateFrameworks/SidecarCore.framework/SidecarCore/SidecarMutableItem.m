@interface SidecarMutableItem
- (BOOL)appendData:(id)a3;
- (SidecarMutableItem)initWithType:(id)a3 capacity:(unint64_t)a4;
- (id)data;
@end

@implementation SidecarMutableItem

- (BOOL)appendData:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 length];
  capacity = self->_capacity;
  v7 = capacity - [(NSMutableData *)self->_mutableData length];
  if (v5 > v7)
  {
    v16 = SidecarCoreLogSubsystem(OS_LOG_TYPE_ERROR);
    v13 = v16;
    if (v16 && os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v19 = [(SidecarItem *)self type];
      v20 = v7;
      v21 = [v4 length];
      v22 = [(NSMutableData *)self->_mutableData length];
      v23 = self->_capacity;
      v24 = 138544130;
      v25 = v19;
      v26 = 2048;
      v27 = v21;
      v7 = v20;
      v28 = 2048;
      v29 = v22;
      v30 = 2048;
      v31 = v23;
      _os_log_impl(&dword_26604C000, v13, OS_LOG_TYPE_ERROR, "item exceeded capacity: %{public}@ (%lu + %lu > %lu)", &v24, 0x2Au);
    }

    goto LABEL_11;
  }

  [(NSMutableData *)self->_mutableData appendData:v4];
  v8 = [(NSMutableData *)self->_mutableData length];
  v9 = self->_capacity;
  v10 = v8 == v9;
  if (v8 == v9)
  {
    v11 = (*(self + 40) & 0xFE) + 1;
  }

  else
  {
    v11 = *(self + 40) & 0xFE;
  }

  *(self + 40) = v11;
  if (v10)
  {
    v12 = SidecarCoreLogSubsystem(OS_LOG_TYPE_INFO);
    v13 = v12;
    if (v12 && os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v14 = [(SidecarItem *)self type];
      v15 = self->_capacity;
      v24 = 138543618;
      v25 = v14;
      v26 = 2048;
      v27 = v15;
      _os_log_impl(&dword_26604C000, v13, OS_LOG_TYPE_INFO, "item complete: %{public}@ (%lu bytes)", &v24, 0x16u);
    }

LABEL_11:
  }

  v17 = *MEMORY[0x277D85DE8];
  return v5 <= v7;
}

- (id)data
{
  if ([(NSMutableData *)self->_mutableData length]== self->_capacity)
  {
    mutableData = self->_mutableData;
  }

  else
  {
    mutableData = 0;
  }

  return mutableData;
}

- (SidecarMutableItem)initWithType:(id)a3 capacity:(unint64_t)a4
{
  v10.receiver = self;
  v10.super_class = SidecarMutableItem;
  v5 = [(SidecarItem *)&v10 initWithData:0 type:a3];
  v6 = v5;
  if (v5)
  {
    v5->_capacity = a4;
    v7 = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:a4];
    mutableData = v6->_mutableData;
    v6->_mutableData = v7;
  }

  return v6;
}

@end