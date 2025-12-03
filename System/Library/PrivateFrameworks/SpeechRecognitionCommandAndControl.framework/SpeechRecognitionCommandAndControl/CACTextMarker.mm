@interface CACTextMarker
+ (BOOL)marker:(id)marker precedesMarker:(id)precedesMarker;
+ (BOOL)marker:(id)marker precedesOrEqualsMarker:(id)equalsMarker;
+ (id)markerWithData:(id)data;
+ (id)markerWithIndex:(unint64_t)index;
+ (unint64_t)lengthFromMarker:(id)marker toMarker:(id)toMarker;
- (BOOL)isEqual:(id)equal;
- (CACTextMarker)initWithData:(id)data;
- (CACTextMarker)initWithIndex:(unint64_t)index;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)setData:(id)data;
@end

@implementation CACTextMarker

+ (id)markerWithIndex:(unint64_t)index
{
  v3 = [objc_allocWithZone(CACTextMarker) initWithIndex:index];

  return v3;
}

+ (id)markerWithData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v4 = [objc_allocWithZone(CACTextMarker) initWithData:dataCopy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (BOOL)marker:(id)marker precedesOrEqualsMarker:(id)equalsMarker
{
  markerCopy = marker;
  equalsMarkerCopy = equalsMarker;
  if ([markerCopy index] == 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(equalsMarkerCopy, "index") == 0x7FFFFFFFFFFFFFFFLL)
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
    index = [markerCopy index];
    v8 = index < [equalsMarkerCopy index];
  }

  return v8;
}

+ (unint64_t)lengthFromMarker:(id)marker toMarker:(id)toMarker
{
  markerCopy = marker;
  toMarkerCopy = toMarker;
  if ([markerCopy index] == 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(toMarkerCopy, "index") == 0x7FFFFFFFFFFFFFFFLL)
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
    index = [toMarkerCopy index];
    v8 = index - [markerCopy index];
  }

  return v8;
}

+ (BOOL)marker:(id)marker precedesMarker:(id)precedesMarker
{
  precedesMarkerCopy = precedesMarker;
  index = [marker index];
  index2 = [precedesMarkerCopy index];

  return index < index2;
}

- (CACTextMarker)initWithData:(id)data
{
  dataCopy = data;
  v9.receiver = self;
  v9.super_class = CACTextMarker;
  v6 = [(CACTextMarker *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_index = 0;
    objc_storeStrong(&v6->_data, data);
  }

  return v7;
}

- (CACTextMarker)initWithIndex:(unint64_t)index
{
  v8.receiver = self;
  v8.super_class = CACTextMarker;
  v4 = [(CACTextMarker *)&v8 init];
  v5 = v4;
  if (v4)
  {
    data = v4->_data;
    v4->_index = index;
    v4->_data = 0;
  }

  return v5;
}

- (void)setData:(id)data
{
  dataCopy = data;
  data = self->_data;
  p_data = &self->_data;
  if (data != dataCopy)
  {
    v8 = dataCopy;
    objc_storeStrong(p_data, data);
    dataCopy = v8;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  data = self->_data;
  v5 = [CACTextMarker allocWithZone:zone];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy)
  {
    data = [(CACTextMarker *)self data];
    data2 = [equalCopy data];
    v7 = data2;
    if (data | data2)
    {
      v8 = 0;
      if (data && data2)
      {
        v8 = CFEqual(data, data2) != 0;
      }
    }

    else
    {
      index = [(CACTextMarker *)self index];
      v8 = index == [equalCopy index];
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
  data = [(CACTextMarker *)self data];

  if (data)
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