@interface VKLabelExternalTextElement
- (VKLabelExternalTextElement)initWithCoder:(id)a3;
- (VKLabelExternalTextElement)initWithTextElement:(const void *)a3;
- (id).cxx_construct;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VKLabelExternalTextElement

- (id).cxx_construct
{
  *(self + 4) = 0;
  *(self + 1) = 0u;
  *(self + 2) = 0u;
  *(self + 3) = 0u;
  *(self + 4) = 0u;
  *(self + 5) = 0u;
  *(self + 6) = 0u;
  return self;
}

- (void)encodeWithCoder:(id)a3
{
  v12 = a3;
  p_text = &self->_element.text;
  if (*(&self->_element.text.text.__rep_.__l + 23) < 0)
  {
    p_text = p_text->text.__rep_.__l.__data_;
  }

  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:p_text];
  [v12 encodeObject:v5 forKey:@"text"];
  p_var0 = &self->_element.text.var0;
  if (SHIBYTE(self[1].super.isa) < 0)
  {
    p_var0 = *p_var0;
  }

  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:p_var0];
  [v12 encodeObject:v7 forKey:@"textLocale"];
  p_element = &self[1]._element;
  if (self[1]._element.text.text.__rep_.__s.__data_[15] < 0)
  {
    p_element = *&p_element->minZoom;
  }

  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:p_element];
  [v12 encodeObject:v9 forKey:@"localizedText"];
  v10 = &self[1]._element.text.text.__rep_.__l + 1;
  if (SHIBYTE(self[1]._element.var0) < 0)
  {
    v10 = *v10;
  }

  v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v10];
  [v12 encodeObject:v11 forKey:@"localizedTextLocale"];
  [v12 encodeInt32:self->_element.textType forKey:@"textType"];
  [v12 encodeInt32:self->_element.minZoom forKey:@"minZoom"];
}

- (VKLabelExternalTextElement)initWithCoder:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v35.receiver = self;
  v35.super_class = VKLabelExternalTextElement;
  v5 = [(VKLabelExternalTextElement *)&v35 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"text"];
    v7 = v6;
    std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::basic_string[abi:nn200100]<0>(&v36, [v6 UTF8String]);
    if ((v38 & 0x80u) == 0)
    {
      v8 = v38;
    }

    else
    {
      v8 = v37;
    }

    if ((v38 & 0x80u) == 0)
    {
      v9 = &v36;
    }

    else
    {
      v9 = v36;
    }

    v10 = std::string::__assign_external((v5 + 16), v9, v8);
    if (v38 < 0)
    {
      v11 = v36;
      v12 = mdm::zone_mallocator::instance(v10);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v12, v11);
    }

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"textLocale"];
    v14 = v13;
    std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::basic_string[abi:nn200100]<0>(&v36, [v13 UTF8String]);
    if ((v38 & 0x80u) == 0)
    {
      v15 = v38;
    }

    else
    {
      v15 = v37;
    }

    if ((v38 & 0x80u) == 0)
    {
      v16 = &v36;
    }

    else
    {
      v16 = v36;
    }

    v17 = std::string::__assign_external((v5 + 40), v16, v15);
    if (v38 < 0)
    {
      v18 = v36;
      v19 = mdm::zone_mallocator::instance(v17);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v19, v18);
    }

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localizedText"];
    v21 = v20;
    std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::basic_string[abi:nn200100]<0>(&v36, [v20 UTF8String]);
    if ((v38 & 0x80u) == 0)
    {
      v22 = v38;
    }

    else
    {
      v22 = v37;
    }

    if ((v38 & 0x80u) == 0)
    {
      v23 = &v36;
    }

    else
    {
      v23 = v36;
    }

    v24 = std::string::__assign_external((v5 + 64), v23, v22);
    if (v38 < 0)
    {
      v25 = v36;
      v26 = mdm::zone_mallocator::instance(v24);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v26, v25);
    }

    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localizedTextLocale"];
    v28 = v27;
    std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::basic_string[abi:nn200100]<0>(&v36, [v27 UTF8String]);
    if ((v38 & 0x80u) == 0)
    {
      v29 = v38;
    }

    else
    {
      v29 = v37;
    }

    if ((v38 & 0x80u) == 0)
    {
      v30 = &v36;
    }

    else
    {
      v30 = v36;
    }

    v31 = std::string::__assign_external((v5 + 88), v30, v29);
    if (v38 < 0)
    {
      v32 = v36;
      v33 = mdm::zone_mallocator::instance(v31);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v33, v32);
    }

    v5[9] = [v4 decodeInt32ForKey:@"textType"];
    v5[8] = [v4 decodeInt32ForKey:@"minZoom"];
  }

  return v5;
}

- (VKLabelExternalTextElement)initWithTextElement:(const void *)a3
{
  v7.receiver = self;
  v7.super_class = VKLabelExternalTextElement;
  v4 = [(VKLabelExternalTextElement *)&v7 init];
  v5 = v4;
  if (v4)
  {
    *(v4 + 4) = *a3;
    std::string::operator=((v4 + 16), (a3 + 8));
    std::string::operator=((v5 + 40), (a3 + 32));
    std::string::operator=((v5 + 64), (a3 + 56));
    std::string::operator=((v5 + 88), (a3 + 80));
  }

  return v5;
}

@end