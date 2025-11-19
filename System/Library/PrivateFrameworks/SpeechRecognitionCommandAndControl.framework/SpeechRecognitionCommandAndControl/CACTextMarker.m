@interface CACTextMarker
+ (BOOL)marker:(id)a3 precedesMarker:(id)a4;
+ (BOOL)marker:(id)a3 precedesOrEqualsMarker:(id)a4;
+ (id)markerWithData:(id)a3;
+ (id)markerWithIndex:(unint64_t)a3;
+ (unint64_t)lengthFromMarker:(id)a3 toMarker:(id)a4;
- (BOOL)isEqual:(id)a3;
- (CACTextMarker)initWithData:(id)a3;
- (CACTextMarker)initWithIndex:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)setData:(id)a3;
@end

@implementation CACTextMarker

+ (id)markerWithIndex:(unint64_t)a3
{
  v3 = [objc_allocWithZone(CACTextMarker) initWithIndex:a3];

  return v3;
}

+ (id)markerWithData:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = [objc_allocWithZone(CACTextMarker) initWithData:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (BOOL)marker:(id)a3 precedesOrEqualsMarker:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 index] == 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v6, "index") == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = CACLogGeneral();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [CACTextMarker marker:v7 precedesOrEqualsMarker:?];
    }

    v8 = 0;
  }

  else
  {
    v9 = [v5 index];
    v8 = v9 < [v6 index];
  }

  return v8;
}

+ (unint64_t)lengthFromMarker:(id)a3 toMarker:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 index] == 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v6, "index") == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = CACLogGeneral();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [CACTextMarker lengthFromMarker:v7 toMarker:?];
    }

    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = [v6 index];
    v8 = v9 - [v5 index];
  }

  return v8;
}

+ (BOOL)marker:(id)a3 precedesMarker:(id)a4
{
  v5 = a4;
  v6 = [a3 index];
  v7 = [v5 index];

  return v6 < v7;
}

- (CACTextMarker)initWithData:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CACTextMarker;
  v6 = [(CACTextMarker *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_index = 0;
    objc_storeStrong(&v6->_data, a3);
  }

  return v7;
}

- (CACTextMarker)initWithIndex:(unint64_t)a3
{
  v8.receiver = self;
  v8.super_class = CACTextMarker;
  v4 = [(CACTextMarker *)&v8 init];
  v5 = v4;
  if (v4)
  {
    data = v4->_data;
    v4->_index = a3;
    v4->_data = 0;
  }

  return v5;
}

- (void)setData:(id)a3
{
  v5 = a3;
  data = self->_data;
  p_data = &self->_data;
  if (data != v5)
  {
    v8 = v5;
    objc_storeStrong(p_data, a3);
    v5 = v8;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  data = self->_data;
  v5 = [CACTextMarker allocWithZone:a3];
  if (data)
  {
    v6 = self->_data;

    return [(CACTextMarker *)v5 initWithData:v6];
  }

  else
  {
    index = self->_index;

    return [(CACTextMarker *)v5 initWithIndex:index];
  }
}

- (unint64_t)hash
{
  data = self->_data;
  if (data)
  {
    return CFHash(data);
  }

  else
  {
    return self->_index;
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(CACTextMarker *)self data];
    v6 = [v4 data];
    v7 = v6;
    if (v5 | v6)
    {
      v8 = 0;
      if (v5 && v6)
      {
        v8 = CFEqual(v5, v6) != 0;
      }
    }

    else
    {
      v9 = [(CACTextMarker *)self index];
      v8 = v9 == [v4 index];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)description
{
  v3 = [(CACTextMarker *)self data];

  if (v3)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"TextMarker (data): %@", self->_data];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"TextMarker: %ld", self->_index];
  }
  v4 = ;

  return v4;
}

@end