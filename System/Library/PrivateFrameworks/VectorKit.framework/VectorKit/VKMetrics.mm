@interface VKMetrics
- (CGRect)boundingRectForItem:(unsigned __int8)a3 text:(id)a4 locale:(id)a5;
- (VKMetrics)initWithDescriptor:(id)a3;
@end

@implementation VKMetrics

- (CGRect)boundingRectForItem:(unsigned __int8)a3 text:(id)a4 locale:(id)a5
{
  v6 = a3;
  v30 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  md::StringWithLocaleImp<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>::StringWithLocaleImp(v26, [v8 UTF8String], objc_msgSend(v9, "UTF8String"));
  md::LabelMetrics::boundingRectForItem(v23, self->_labelMetrics.__ptr_, v6, v26);
  if (v25)
  {
    v11 = v23[0];
    v12 = -v24;
    v13 = (v23[2] - v23[0]);
    v14 = (v24 - v23[1]);
  }

  else
  {
    v11 = 0.0;
    v12 = 0.0;
    v13 = 0.0;
    v14 = 0.0;
  }

  if (v29 < 0)
  {
    v15 = v28;
    v16 = mdm::zone_mallocator::instance(v10);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v16, v15);
  }

  if (v27 < 0)
  {
    v17 = v26[0];
    v18 = mdm::zone_mallocator::instance(v10);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v18, v17);
  }

  v19 = v11;
  v20 = v12;
  v21 = v13;
  v22 = v14;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (VKMetrics)initWithDescriptor:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = VKMetrics;
  if ([(VKMetrics *)&v6 init])
  {
    operator new();
  }

  return 0;
}

@end