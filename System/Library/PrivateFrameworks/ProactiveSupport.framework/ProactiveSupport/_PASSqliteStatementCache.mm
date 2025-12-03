@interface _PASSqliteStatementCache
- (_PASSqliteStatementCache)init;
- (uLong)crc32ForStatement:(sqlite3_stmt *)statement;
- (uint64_t)checkOutStatement:(id *)statement associatedObject:(const char *)object withSQL:;
- (void)evictCachedStatementForScoreSlot:(uint64_t)slot;
@end

@implementation _PASSqliteStatementCache

- (_PASSqliteStatementCache)init
{
  v3.receiver = self;
  v3.super_class = _PASSqliteStatementCache;
  result = [(_PASSqliteStatementCache *)&v3 init];
  if (result)
  {
    *&result->_scores[0].crc32 = 0u;
    *&result->_associatedObjects[4] = 0u;
    *&result->_associatedObjects[6] = 0u;
    *result->_associatedObjects = 0u;
    *&result->_associatedObjects[2] = 0u;
    *&result->_cached[4] = 0u;
    *&result->_cached[6] = 0u;
    *result->_cached = 0u;
    *&result->_cached[2] = 0u;
    *&result->_scores[28].crc32 = 0u;
    *&result->_scores[30].crc32 = 0u;
    *&result->_scores[24].crc32 = 0u;
    *&result->_scores[26].crc32 = 0u;
    *&result->_scores[20].crc32 = 0u;
    *&result->_scores[22].crc32 = 0u;
    *&result->_scores[16].crc32 = 0u;
    *&result->_scores[18].crc32 = 0u;
    *&result->_scores[12].crc32 = 0u;
    *&result->_scores[14].crc32 = 0u;
    *&result->_scores[8].crc32 = 0u;
    *&result->_scores[10].crc32 = 0u;
    *&result->_scores[4].crc32 = 0u;
    *&result->_scores[6].crc32 = 0u;
    *&result->_scores[2].crc32 = 0u;
  }

  return result;
}

- (void)evictCachedStatementForScoreSlot:(uint64_t)slot
{
  if (*(slot + 8 + 8 * a2 + 4) >= 9u)
  {
    v3 = 0;
    v4 = *(slot + 8 + 8 * a2);
    v5 = slot + 264;
    while (1)
    {
      v6 = *(v5 + 8 * v3);
      if (v6)
      {
        if ([_PASSqliteStatementCache crc32ForStatement:v6]== v4)
        {
          break;
        }
      }

      if (++v3 == 8)
      {
        return;
      }
    }

    sqlite3_finalize(*(v5 + 8 * v3));
    *(v5 + 8 * v3) = 0;
    v7 = slot + 328;
    v8 = *(v7 + 8 * v3);
    if (v8)
    {
      CFRelease(v8);
      *(v7 + 8 * v3) = 0;
    }
  }
}

- (uLong)crc32ForStatement:(sqlite3_stmt *)statement
{
  v1 = sqlite3_sql(statement);
  v2 = v1;
  if (v1)
  {
    v3 = strlen(v1);
  }

  else
  {
    v3 = 0;
  }

  return crc32_z(0, v2, v3);
}

- (uint64_t)checkOutStatement:(id *)statement associatedObject:(const char *)object withSQL:
{
  result = 0;
  if (self && object)
  {
    v9 = 0;
    v10 = self + 264;
    while (1)
    {
      v11 = *(v10 + 8 * v9);
      if (v11)
      {
        v12 = sqlite3_sql(*(v10 + 8 * v9));
        if (!strcmp(object, v12))
        {
          break;
        }
      }

      if (++v9 == 8)
      {
        return 0;
      }
    }

    *(v10 + 8 * v9) = 0;
    if (statement)
    {
      objc_storeStrong(statement, *(self + 8 * v9 + 328));
    }

    v13 = self + 328;
    v14 = *(v13 + 8 * v9);
    if (v14)
    {
      CFRelease(v14);
      *(v13 + 8 * v9) = 0;
    }

    *a2 = v11;
    return 1;
  }

  return result;
}

@end