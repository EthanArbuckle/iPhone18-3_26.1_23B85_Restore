@interface RSRoomTypeGenerator
- (RSRoomTypeGenerator)init;
- (id).cxx_construct;
@end

@implementation RSRoomTypeGenerator

- (id).cxx_construct
{
  self->_detector.model_._output_tensor.__tree_.__end_node_.__left_ = 0;
  self->_obb_detector._prev_main_vec.var0.__null_state_ = 0;
  self->_anon_a[6] = 0;
  self->_detector.model_._vptr$IEspresso_Interface_v1 = &unk_2874EE6C8;
  self->_detector.model_._output_tensor.__tree_.__begin_node_ = &self->_detector.model_._output_tensor.__tree_.__end_node_;
  *&self->_detector.model_._previous_mode.__rep_.__l.__size_ = 0uLL;
  self->_detector.model_._ctx = 0;
  self->_detector.model_._plan = 0;
  self->_detector.model_._output_tensor.__tree_.__size_ = 0;
  *(&self->_detector.model_._previous_mode.__rep_.__l + 23) = 8;
  self->_detector.model_._previous_mode.__rep_.__l.__data_ = 0x6E776F6E6B5F6E75;
  LOBYTE(self->_detector.model_.var0) = 1;
  sub_2623104AC(&self->_detector.var0);
}

- (RSRoomTypeGenerator)init
{
  v29.receiver = self;
  v29.super_class = RSRoomTypeGenerator;
  v2 = [(RSRoomTypeGenerator *)&v29 init];
  if (v2)
  {
    v3 = MEMORY[0x277CCA8D8];
    v4 = objc_opt_class();
    v7 = objc_msgSend_bundleForClass_(v3, v5, v4);
    v8 = v2 + 552;
    if (v2[575] < 0)
    {
      v8 = *v8;
    }

    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v8);
    v11 = objc_msgSend_pathForResource_ofType_(v7, v10, v9, 0);
    v12 = v11;
    v15 = objc_msgSend_UTF8String(v12, v13, v14);
    sub_2621D0F64(&v27, v15);

    v2[120] = 1;
    *(v2 + 8) = espresso_create_context();
    *(v2 + 9) = espresso_create_plan();
    if (espresso_plan_add_network())
    {
      goto LABEL_16;
    }

    v16 = *(v2 + 27);
    if (*(v2 + 28) != v16)
    {
      if (*(v16 + 23) < 0)
      {
        v17 = *v16;
      }

      v18 = *(v2 + 10);
      v19 = *(v2 + 11);
      espresso_network_declare_output();
      operator new();
    }

    if (v2[119] < 0)
    {
      *(v2 + 13) = 8;
      v20 = *(v2 + 12);
    }

    else
    {
      v20 = v2 + 96;
      v2[119] = 8;
    }

    strcpy(v20, "un_known");
    v22 = *(v2 + 9);
    if (espresso_plan_build() || (sub_2622E8198(v2 + 4) & 1) == 0)
    {
LABEL_16:
      if (qword_27FF0C060 != -1)
      {
        dispatch_once(&qword_27FF0C060, &unk_2874EE100);
      }

      v25 = qword_27FF0C058;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        LOWORD(__p[0]) = 0;
        _os_log_error_impl(&dword_2621C3000, v25, OS_LOG_TYPE_ERROR, "Load room type v4 model failed", __p, 2u);
      }

      v21 = 0;
    }

    else
    {
      v23 = sub_2621CC9BC([RSOfflineGeometryCalculation alloc], *(v2 + 110), v2[472], *(v2 + 116), *(v2 + 112));
      v24 = *(v2 + 54);
      *(v2 + 54) = v23;

      v21 = v2;
    }

    if (v28 < 0)
    {
      operator delete(v27);
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

@end