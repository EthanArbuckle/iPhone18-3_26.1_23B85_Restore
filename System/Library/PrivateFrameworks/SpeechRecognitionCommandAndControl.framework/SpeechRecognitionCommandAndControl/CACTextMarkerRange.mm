@interface CACTextMarkerRange
+ (CACTextMarkerRange)markerRangeWithArray:(id)array;
+ (CACTextMarkerRange)markerRangeWithNSRange:(_NSRange)range;
+ (CACTextMarkerRange)markerRangeWithStartMarker:(id)marker endMarker:(id)endMarker forTextElement:(id)element;
- (BOOL)containsMarker:(id)marker;
- (BOOL)containsRange:(id)range;
- (BOOL)isEqual:(id)equal;
- (CACTextMarkerRange)initWithStartMarker:(id)marker endMarker:(id)endMarker;
- (NSString)description;
- (_NSRange)nsRange;
- (id)array;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation CACTextMarkerRange

+ (CACTextMarkerRange)markerRangeWithStartMarker:(id)marker endMarker:(id)endMarker forTextElement:(id)element
{
  endMarkerCopy = endMarker;
  markerCopy = marker;
  v8 = [objc_allocWithZone(CACTextMarkerRange) initWithStartMarker:markerCopy endMarker:endMarkerCopy];

  return v8;
}

+ (CACTextMarkerRange)markerRangeWithNSRange:(_NSRange)range
{
  if (range.location == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    length = range.length;
    location = range.location;
    v6 = [CACTextMarker markerWithIndex:?];
    v7 = [CACTextMarker markerWithIndex:location + length];
    v3 = [objc_allocWithZone(CACTextMarkerRange) initWithStartMarker:v6 endMarker:v7];
  }

  return v3;
}

+ (CACTextMarkerRange)markerRangeWithArray:(id)array
{
  arrayCopy = array;
  if ([arrayCopy count] == 2)
  {
    v4 = objc_allocWithZone(CACTextMarker);
    v5 = [arrayCopy objectAtIndex:0];
    v6 = [v4 initWithData:v5];

    v7 = objc_allocWithZone(CACTextMarker);
    v8 = [arrayCopy objectAtIndex:1];
    v9 = [v7 initWithData:v8];

    v10 = [objc_allocWithZone(CACTextMarkerRange) initWithStartMarker:v6 endMarker:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (CACTextMarkerRange)initWithStartMarker:(id)marker endMarker:(id)endMarker
{
  markerCopy = marker;
  endMarkerCopy = endMarker;
  v13.receiver = self;
  v13.super_class = CACTextMarkerRange;
  v9 = [(CACTextMarkerRange *)&v13 init];
  p_isa = &v9->super.isa;
  if (!v9)
  {
    goto LABEL_5;
  }

  v11 = 0;
  if (markerCopy && endMarkerCopy)
  {
    objc_storeStrong(&v9->_startMarker, marker);
    objc_storeStrong(p_isa + 2, endMarker);
LABEL_5:
    v11 = p_isa;
  }

  return v11;
}

- (_NSRange)nsRange
{
  index = [(CACTextMarker *)self->_startMarker index];
  v4 = [(CACTextMarker *)self->_endMarker index]- index;
  if (v4 < 0)
  {
    v5 = CACLogGeneral();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(CACTextMarkerRange *)v5 nsRange];
    }

    v4 = 0;
  }

  v6 = index;
  result.length = v4;
  result.location = v6;
  return result;
}

- (id)array
{
  data = [(CACTextMarker *)self->_startMarker data];
  if (data)
  {
    data2 = [(CACTextMarker *)self->_endMarker data];
    if (data2)
    {
      v5 = MEMORY[0x277CBEA60];
      data3 = [(CACTextMarker *)self->_startMarker data];
      data4 = [(CACTextMarker *)self->_endMarker data];
      v8 = [v5 arrayWithObjects:{data3, data4, 0}];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CACTextMarkerRange allocWithZone:zone];
  startMarker = self->_startMarker;
  endMarker = self->_endMarker;

  return [(CACTextMarkerRange *)v4 initWithStartMarker:startMarker endMarker:endMarker];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  startMarker = self->_startMarker;
  startMarker = [equalCopy startMarker];
  if ([(CACTextMarker *)startMarker isEqual:startMarker])
  {
    endMarker = self->_endMarker;
    endMarker = [equalCopy endMarker];
    v9 = [(CACTextMarker *)endMarker isEqual:endMarker];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)containsMarker:(id)marker
{
  markerCopy = marker;
  if ([CACTextMarker marker:self->_startMarker precedesOrEqualsMarker:markerCopy])
  {
    v5 = [CACTextMarker marker:markerCopy precedesOrEqualsMarker:self->_endMarker];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)containsRange:(id)range
{
  rangeCopy = range;
  startMarker = self->_startMarker;
  startMarker = [rangeCopy startMarker];
  if ([CACTextMarker marker:startMarker precedesOrEqualsMarker:startMarker])
  {
    endMarker = [rangeCopy endMarker];
    v8 = [CACTextMarker marker:endMarker precedesOrEqualsMarker:self->_endMarker];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSString)description
{
  data = [(CACTextMarker *)self->_startMarker data];
  if (data && ([(CACTextMarker *)self->_endMarker data], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
    v6 = MEMORY[0x277CCACA8];
    data2 = [(CACTextMarker *)self->_startMarker data];
    data3 = [(CACTextMarker *)self->_endMarker data];
    v9 = [v6 stringWithFormat:@"CAC Marker Range: start: %@, end: %@", data2, data3];
  }

  else
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"CAC Marker Range: start: %ld, end: %ld, length: %ld", -[CACTextMarker index](self->_startMarker, "index"), -[CACTextMarker index](self->_endMarker, "index"), -[CACTextMarker index](self->_endMarker, "index") - -[CACTextMarker index](self->_startMarker, "index")];
  }

  return v9;
}

@end