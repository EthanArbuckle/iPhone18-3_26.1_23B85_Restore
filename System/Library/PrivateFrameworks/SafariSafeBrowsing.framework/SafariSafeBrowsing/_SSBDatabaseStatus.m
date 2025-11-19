@interface _SSBDatabaseStatus
- (_SSBDatabaseStatus)initWithDatabaseStatus:(DatabaseStatus *)a3;
- (id).cxx_construct;
- (id)lastUpdateTimeOfDatabaseAtIndex:(unint64_t)a3;
- (id)nameOfDatabaseAtIndex:(unint64_t)a3;
- (id)nextPollingTimeOfDatabaseAtIndex:(unint64_t)a3;
- (unint64_t)sizeOfDatabaseAtIndex:(unint64_t)a3;
- (unsigned)hashCountOfDatabaseAtIndex:(unint64_t)a3;
@end

@implementation _SSBDatabaseStatus

- (_SSBDatabaseStatus)initWithDatabaseStatus:(DatabaseStatus *)a3
{
  v8.receiver = self;
  v8.super_class = _SSBDatabaseStatus;
  v4 = [(_SSBDatabaseStatus *)&v8 init];
  v5 = v4;
  if (v4)
  {
    std::vector<SafeBrowsing::DatabaseStatus::Database>::__vdeallocate(&v4->_databaseStatus);
    *&v5->_databaseStatus.m_databases.__begin_ = *&a3->m_databases.__begin_;
    v5->_databaseStatus.m_databases.__cap_ = a3->m_databases.__cap_;
    a3->m_databases.__begin_ = 0;
    a3->m_databases.__end_ = 0;
    a3->m_databases.__cap_ = 0;
    v6 = v5;
  }

  return v5;
}

- (id)nameOfDatabaseAtIndex:(unint64_t)a3
{
  v4 = *(self + 1);
  v5 = 0x6DB6DB6DB6DB6DB7 * ((*(self + 2) - v4) >> 3);
  if (v5 <= a3)
  {
    v7 = self;
    v8 = MEMORY[0x277CBEAD8];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = NSStringFromSelector(a2);
    [v8 raise:*MEMORY[0x277CBE730] format:{@"-[%@ %@]", v10, v11}];

    v4 = v7[1];
    v5 = 0x6DB6DB6DB6DB6DB7 * ((v7[2] - v4) >> 3);
  }

  if (v5 <= a3)
  {
    __break(1u);
  }

  else
  {
    v12 = MEMORY[0x277CCACA8];
    v13 = (v4 + 56 * a3);
    if (*(v13 + 23) < 0)
    {
      v13 = *v13;
    }

    return [v12 stringWithUTF8String:v13];
  }

  return self;
}

- (unint64_t)sizeOfDatabaseAtIndex:(unint64_t)a3
{
  v4 = *(self + 8);
  v5 = 0x6DB6DB6DB6DB6DB7 * ((*(self + 16) - v4) >> 3);
  if (v5 <= a3)
  {
    v7 = self;
    v8 = MEMORY[0x277CBEAD8];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = NSStringFromSelector(a2);
    [v8 raise:*MEMORY[0x277CBE730] format:{@"-[%@ %@]", v10, v11}];

    v4 = *(v7 + 8);
    v5 = 0x6DB6DB6DB6DB6DB7 * ((*(v7 + 16) - v4) >> 3);
  }

  if (v5 > a3)
  {
    return *(v4 + 56 * a3 + 24);
  }

  __break(1u);
  return self;
}

- (unsigned)hashCountOfDatabaseAtIndex:(unint64_t)a3
{
  begin = self->_databaseStatus.m_databases.__begin_;
  v5 = 0x6DB6DB6DB6DB6DB7 * ((self->_databaseStatus.m_databases.__end_ - begin) >> 3);
  if (v5 <= a3)
  {
    v7 = self;
    v8 = MEMORY[0x277CBEAD8];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = NSStringFromSelector(a2);
    [v8 raise:*MEMORY[0x277CBE730] format:{@"-[%@ %@]", v10, v11}];

    begin = v7->_databaseStatus.m_databases.__begin_;
    v5 = 0x6DB6DB6DB6DB6DB7 * ((v7->_databaseStatus.m_databases.__end_ - begin) >> 3);
  }

  if (v5 <= a3)
  {
    __break(1u);
  }

  else
  {
    LODWORD(self) = *(begin + 14 * a3 + 8);
  }

  return self;
}

- (id)lastUpdateTimeOfDatabaseAtIndex:(unint64_t)a3
{
  v4 = *(self + 1);
  v5 = 0x6DB6DB6DB6DB6DB7 * ((*(self + 2) - v4) >> 3);
  if (v5 <= a3)
  {
    v7 = self;
    v8 = MEMORY[0x277CBEAD8];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = NSStringFromSelector(a2);
    [v8 raise:*MEMORY[0x277CBE730] format:{@"-[%@ %@]", v10, v11}];

    v4 = v7[1];
    v5 = 0x6DB6DB6DB6DB6DB7 * ((v7[2] - v4) >> 3);
  }

  if (v5 <= a3)
  {
    __break(1u);
  }

  else
  {
    v12 = MEMORY[0x277CBEAA8];
    v13 = (*(v4 + 56 * a3 + 40) * 0x431BDE82D7B634DBLL) >> 64;

    return [v12 dateWithTimeIntervalSince1970:((v13 >> 18) + (v13 >> 63))];
  }

  return self;
}

- (id)nextPollingTimeOfDatabaseAtIndex:(unint64_t)a3
{
  v4 = *(self + 1);
  v5 = 0x6DB6DB6DB6DB6DB7 * ((*(self + 2) - v4) >> 3);
  if (v5 <= a3)
  {
    v7 = self;
    v8 = MEMORY[0x277CBEAD8];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = NSStringFromSelector(a2);
    [v8 raise:*MEMORY[0x277CBE730] format:{@"-[%@ %@]", v10, v11}];

    v4 = v7[1];
    v5 = 0x6DB6DB6DB6DB6DB7 * ((v7[2] - v4) >> 3);
  }

  if (v5 <= a3)
  {
    __break(1u);
  }

  else
  {
    v12 = MEMORY[0x277CBEAA8];
    v13 = (*(v4 + 56 * a3 + 48) * 0x431BDE82D7B634DBLL) >> 64;

    return [v12 dateWithTimeIntervalSince1970:((v13 >> 18) + (v13 >> 63))];
  }

  return self;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

@end