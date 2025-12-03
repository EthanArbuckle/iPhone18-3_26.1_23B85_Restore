@interface _SSBServiceStatus
- (NSArray)activeTransactions;
- (NSArray)databaseUpdatersStatuses;
- (NSString)name;
- (_SSBServiceStatus)initWithServiceStatus:(ServiceStatus *)status;
- (id).cxx_construct;
- (id)bundleIdentifierForConnectionAtIndex:(unint64_t)index;
- (int)processIdentifierForConnectionAtIndex:(unint64_t)index;
- (unint64_t)databaseUpdaterState;
@end

@implementation _SSBServiceStatus

- (_SSBServiceStatus)initWithServiceStatus:(ServiceStatus *)status
{
  v9.receiver = self;
  v9.super_class = _SSBServiceStatus;
  v4 = [(_SSBServiceStatus *)&v9 init];
  v5 = v4;
  if (v4)
  {
    if (*(&v4->_serviceStatus.m_name.__rep_.__l + 23) < 0)
    {
      operator delete(v4->_serviceStatus.m_name.__rep_.__l.__data_);
    }

    v6 = *status->m_name.__rep_.__s.__data_;
    *(&v5->_serviceStatus.m_name.__rep_.__l + 2) = *(&status->m_name.__rep_.__l + 2);
    *v5->_serviceStatus.m_name.__rep_.__s.__data_ = v6;
    *(&status->m_name.__rep_.__l + 23) = 0;
    status->m_name.__rep_.__s.__data_[0] = 0;
    v5->_serviceStatus.var0 = status->var0;
    std::vector<std::string>::__vdeallocate(&v5[1]);
    *&v5[1].super.isa = *status[1].m_name.__rep_.__s.__data_;
    v5[1]._serviceStatus.m_name.__rep_.__l.__size_ = *(&status[1].m_name.__rep_.__l + 2);
    status[1].m_name.__rep_.__l.__data_ = 0;
    status[1].m_name.__rep_.__l.__size_ = 0;
    *(&status[1].m_name.__rep_.__l + 2) = 0;
    std::vector<SafeBrowsing::ServiceStatus::Connection>::__vdeallocate(&v5[1]._serviceStatus.m_name.__rep_.__l + 2);
    *(&v5[1]._serviceStatus.m_name.__rep_.__l + 1) = *&status[1].var0;
    v5[2].super.isa = status[2].m_name.__rep_.__l.__size_;
    *&status[1].var0 = 0;
    status[2].m_name.__rep_.__l.__data_ = 0;
    status[2].m_name.__rep_.__l.__size_ = 0;
    std::vector<SafeBrowsing::ServiceStatus::DatabaseUpdaterStatus>::__move_assign(&v5[2]._serviceStatus, &status[2].m_name.__rep_.__l + 1);
    v7 = v5;
  }

  return v5;
}

- (NSString)name
{
  p_serviceStatus = &self->_serviceStatus;
  if (*(&self->_serviceStatus.m_name.__rep_.__l + 23) < 0)
  {
    p_serviceStatus = p_serviceStatus->m_name.__rep_.__l.__data_;
  }

  return [MEMORY[0x277CCACA8] stringWithUTF8String:p_serviceStatus];
}

- (NSArray)activeTransactions
{
  v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:0xAAAAAAAAAAAAAAABLL * ((self[1]._serviceStatus.m_name.__rep_.__l.__data_ - self[1].super.isa) >> 3)];
  isa = self[1].super.isa;
  for (i = self[1]._serviceStatus.m_name.__rep_.__l.__data_; isa != i; isa = (isa + 24))
  {
    v6 = isa;
    if (*(isa + 23) < 0)
    {
      v6 = *isa;
    }

    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:v6];
    [v3 addObject:v7];
  }

  return v3;
}

- (int)processIdentifierForConnectionAtIndex:(unint64_t)index
{
  v4 = *(&self[1]._serviceStatus.m_name.__rep_.__l + 2);
  v5 = (*&self[1]._serviceStatus.var0 - v4) >> 5;
  if (v5 <= index)
  {
    selfCopy = self;
    v8 = MEMORY[0x277CBEAD8];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = NSStringFromSelector(a2);
    [v8 raise:*MEMORY[0x277CBE730] format:{@"-[%@ %@]", v10, v11}];

    v4 = *(&selfCopy[1]._serviceStatus.m_name.__rep_.__l + 2);
    v5 = (*&selfCopy[1]._serviceStatus.var0 - v4) >> 5;
  }

  if (v5 <= index)
  {
    __break(1u);
  }

  else
  {
    LODWORD(self) = *(v4 + 32 * index);
  }

  return self;
}

- (id)bundleIdentifierForConnectionAtIndex:(unint64_t)index
{
  v4 = *(self + 8);
  v5 = (*(self + 9) - v4) >> 5;
  if (v5 <= index)
  {
    selfCopy = self;
    v8 = MEMORY[0x277CBEAD8];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = NSStringFromSelector(a2);
    [v8 raise:*MEMORY[0x277CBE730] format:{@"-[%@ %@]", v10, v11}];

    v4 = selfCopy[8];
    v5 = (selfCopy[9] - v4) >> 5;
  }

  if (v5 <= index)
  {
    __break(1u);
    return self;
  }

  v12 = v4 + 32 * index;
  v13 = (v12 + 8);
  v14 = *(v12 + 31);
  if (v14 < 0)
  {
    if (!v13[1])
    {
LABEL_10:
      v15 = 0;
      goto LABEL_11;
    }

    v13 = *v13;
  }

  else if (!v14)
  {
    goto LABEL_10;
  }

  v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:v13];
LABEL_11:

  return v15;
}

- (NSArray)databaseUpdatersStatuses
{
  v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:(self[2]._serviceStatus.m_name.__rep_.__l.__size_ - self[2]._serviceStatus.m_name.__rep_.__l.__data_) >> 3];
  data = self[2]._serviceStatus.m_name.__rep_.__l.__data_;
  for (i = self[2]._serviceStatus.m_name.__rep_.__l.__size_; data != i; data += 8)
  {
    v6 = [[SSBDatabaseUpdaterStatus alloc] _initWithDatabaseUpdaterStatus:*data];
    [v3 addObject:v6];
  }

  return v3;
}

- (unint64_t)databaseUpdaterState
{
  v2 = *(self + 88);
  if (v2 != *(self + 96))
  {
    return *v2;
  }

  __break(1u);
  return self;
}

- (id).cxx_construct
{
  *(self + 8) = 0uLL;
  *(self + 3) = 0;
  *(self + 8) = -1;
  *(self + 40) = 0u;
  *(self + 56) = 0u;
  *(self + 72) = 0u;
  *(self + 88) = 0u;
  *(self + 13) = 0;
  return self;
}

@end