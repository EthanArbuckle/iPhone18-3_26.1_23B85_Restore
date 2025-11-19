@interface RSNonUniformHeightEstimation
- (RSNonUniformHeightEstimation)init;
- (id).cxx_construct;
@end

@implementation RSNonUniformHeightEstimation

- (id).cxx_construct
{
  self->_height_estimator._vptr$HeightCoreBase = &unk_2874EEB50;
  self->_height_estimator._height_model_input = 0;
  self->_height_estimator._line_generator._vptr$LineGeneration = &unk_2874EE230;
  self->_height_estimator._line_generator.height_fit._vptr$HeightLineFit = &unk_2874EE250;
  *&self->_height_estimator._line_generator.height_fit.edge_score_thr = 0x33DCCCCCDLL;
  *&self->_height_estimator._line_generator.height_fit.pixel_sz = 0x3F0000003CF5C28FLL;
  self->_height_estimator._line_generator.gt_width = 3;
  self->_height_estimator._global_optimization._vptr$GlobalOptimization = &unk_2874EE270;
  *&self->_height_estimator._global_optimization.small_wall_len_thr = xmmword_2623A76A0;
  *&v2 = 0x3F0000003F000000;
  *(&v2 + 1) = 0x3F0000003F000000;
  *&self->_height_estimator._global_optimization.occlusion_thr = v2;
  *&self->_height_estimator._global_optimization.window_lower_thr = xmmword_2623A76B0;
  *&self->_height_estimator._global_optimization.occlusion_score_thr = xmmword_2623A76C0;
  self->_height_estimator._global_optimization.neighbor_height_align_thr = 0.09;
  *&self->_height_estimator._inputs_name.__begin_ = 0u;
  *&self->_height_estimator._inputs_name.__cap_ = 0u;
  *&self->_height_estimator._outputs_name.__end_ = 0u;
  *&self->_height_estimator._path_pool.__begin_ = 0u;
  self->_height_estimator._path_pool.__cap_ = 0;
  self->_height_estimator._path_fusion._skip_stat_dict.__tree_.__end_node_.__left_ = 0;
  self->_height_estimator._path_fusion._vptr$PathFusion = &unk_2874EEB80;
  self->_height_estimator._path_fusion._skip_stat_dict.__tree_.__size_ = 0;
  self->_height_estimator._path_fusion._skip_stat_dict.__tree_.__begin_node_ = &self->_height_estimator._path_fusion._skip_stat_dict.__tree_.__end_node_;
  *&self->_height_estimator._path_fusion.height_diff_thr = 0x3F0000003F000000;
  operator new();
}

- (RSNonUniformHeightEstimation)init
{
  v27.__r_.__value_.__r.__words[0] = *MEMORY[0x277D85DE8];
  v24.receiver = self;
  v24.super_class = RSNonUniformHeightEstimation;
  v2 = [(RSNonUniformHeightEstimation *)&v24 init];
  v3 = v2;
  if (v2)
  {
    v2->_isNonUniformHeightEnabled = 1;
  }

  v4 = MEMORY[0x277CCA8D8];
  v5 = objc_opt_class();
  v7 = objc_msgSend_bundleForClass_(v4, v6, v5);
  v9 = objc_msgSend_stringByAppendingPathComponent_(@"PrecompiledModels", v8, @"nuh_model.bundle");
  v10 = sub_262381FB4(v9, 0, v7);
  v11 = v10;
  v14 = objc_msgSend_UTF8String(v10, v12, v13);
  v15 = strlen(v14);
  if (v15 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_2621CC980();
  }

  v16 = v15;
  if (v15 >= 0x17)
  {
    operator new();
  }

  v23 = v15;
  if (v15)
  {
    memmove(&v22, v14, v15);
  }

  *(&v22 + v16) = 0;
  sub_2621D0F64(&__p, "height_image");
  sub_262328608(&v3->_height_estimator._inputs_name, &__p, &v26, 1uLL);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_2621D0F64(&__p, "406");
  sub_2621D0F64(&v26, "417");
  sub_262328608(&v3->_height_estimator._outputs_name, &__p, &v27, 2uLL);
  for (i = 0; i != -6; i -= 3)
  {
    if (SHIBYTE(v26.__r_.__value_.__r.__words[i + 2]) < 0)
    {
      operator delete(*(&__p + i * 8 + 24));
    }
  }

  v18 = sub_2622C5968([RSSemanticImage alloc], 128, 256, 25, 1, v3->_height_estimator.flt_type);
  height_model_input = v3->_height_estimator._height_model_input;
  v3->_height_estimator._height_model_input = v18;

  (*(v3->_height_estimator._vptr$HeightCoreBase + 2))(&v3->_height_estimator, &v22);
  if (v23 < 0)
  {
    operator delete(v22);
  }

  v20 = *MEMORY[0x277D85DE8];
  return v3;
}

@end