@interface RSOpeningHeightAlignment
- (RSOpeningHeightAlignment)init;
- (id).cxx_construct;
@end

@implementation RSOpeningHeightAlignment

- (id).cxx_construct
{
  self->_openingHeightAlignment._opening_fixed.__table_.__bucket_list_ = 0u;
  p_opening_fixed = &self->_openingHeightAlignment._opening_fixed;
  self->_openingHeightAlignment._vptr$OpeningHeightAlignment = &unk_2874EE0D0;
  *&self->_openingHeightAlignment._opening_fixed.__table_.__first_node_.__next_ = 0u;
  self->_openingHeightAlignment._opening_fixed.__table_.__max_load_factor_ = 1.0;
  self->_openingHeightAlignment._hole_vector.__end_ = 0;
  self->_openingHeightAlignment._hole_vector.__cap_ = 0;
  self->_openingHeightAlignment._hole_vector.__begin_ = 0;
  self->_openingHeightAlignment._check_in_view = 1;
  sub_2621CD7C8(&self->_openingHeightAlignment._opening_fixed);
  *(&p_opening_fixed[1].__table_.__bucket_list_.__ptr_ + 4) = 0x3FCCCCCD3F800000;
  HIDWORD(p_opening_fixed[1].__table_.__bucket_list_.__deleter_.__size_) = -1027080192;
  p_opening_fixed[1].__table_.__first_node_.__next_ = 0x300000014;
  LODWORD(p_opening_fixed[1].__table_.__size_) = 1086324736;
  *&p_opening_fixed[1].__table_.__max_load_factor_ = 0x3FD3333333333333;
  v6 = p_opening_fixed + 2;
  ptr = p_opening_fixed[2].__table_.__bucket_list_.__ptr_;
  for (i = v6->__table_.__bucket_list_.__deleter_.__size_; i != ptr; sub_2621CD70C(i))
  {
    i -= 64;
  }

  self->_openingHeightAlignment._hole_vector.__end_ = ptr;
  return self;
}

- (RSOpeningHeightAlignment)init
{
  v3.receiver = self;
  v3.super_class = RSOpeningHeightAlignment;
  return [(RSOpeningHeightAlignment *)&v3 init];
}

@end