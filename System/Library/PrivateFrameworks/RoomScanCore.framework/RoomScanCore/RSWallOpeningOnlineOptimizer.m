@interface RSWallOpeningOnlineOptimizer
- (RSWallOpeningOnlineOptimizer)init;
- (id).cxx_construct;
@end

@implementation RSWallOpeningOnlineOptimizer

- (id).cxx_construct
{
  v13[19] = *MEMORY[0x277D85DE8];
  *self->_online_refinement._search_range_3._view._shape_of_view._sp = 0u;
  self->_online_refinement._vptr$RSOnlineRefinement = &unk_2874EE5A0;
  self->_online_refinement._search_range_7._vptr$Tensor = &unk_2874EE7A8;
  *self->_online_refinement._search_range_7._view._shape_of_view._sp = 0u;
  *&self->_online_refinement._search_range_7._view._shape_of_view._sp[2] = 0u;
  *&self->_online_refinement._search_range_7._view._shape_of_view._sp[4] = 0u;
  *self->_online_refinement._search_range_7._view._stride_of_view._sp = 0u;
  *&self->_online_refinement._search_range_7._view._stride_of_view._sp[2] = 0u;
  *&self->_online_refinement._search_range_7._view._stride_of_view._sp[4] = 0u;
  self->_online_refinement._search_range_7._storage.__ptr_ = 0;
  self->_online_refinement._search_range_7._storage.__cntrl_ = 0;
  *&self->_online_refinement._search_range_7._is_contiguous = 257;
  self->_online_refinement._search_range_3._vptr$Tensor = &unk_2874EE7A8;
  *&self->_online_refinement._search_range_3._view._shape_of_view._sp[2] = 0u;
  *&self->_online_refinement._search_range_3._view._shape_of_view._sp[4] = 0u;
  *self->_online_refinement._search_range_3._view._stride_of_view._sp = 0u;
  *&self->_online_refinement._search_range_3._view._stride_of_view._sp[2] = 0u;
  *&self->_online_refinement._search_range_3._view._stride_of_view._sp[4] = 0u;
  self->_online_refinement._search_range_3._storage.__ptr_ = 0;
  self->_online_refinement._search_range_3._storage.__cntrl_ = 0;
  *&self->_online_refinement._search_range_3._is_contiguous = 257;
  *(&self->_online_refinement._fitting_lines.var0.var0 + 8) = 0;
  self->_anon_1b8[72] = 0;
  *&self->_anon_1b8[88] = 26;
  *&self->_anon_1b8[92] = xmmword_2623A7A20;
  *&self->_anon_1b8[108] = 0x3ECCCCCD40400000;
  *&self->_anon_1b8[116] = xmmword_2623A75A0;
  *&self->_anon_1b8[132] = xmmword_2623A75B0;
  *&self->_anon_1b8[148] = xmmword_2623A75C0;
  *&self->_anon_1b8[164] = 0x3F0000003E4CCCCDLL;
  *&self->_anon_1b8[172] = 0x3F40000000000003;
  *&self->_anon_1b8[180] = 3;
  *&self->_anon_1b8[184] = xmmword_2623A75D0;
  *&self->_anon_1b8[200] = xmmword_2623A75E0;
  *&self->_anon_1b8[216] = xmmword_2623A75F0;
  *&self->_anon_1b8[232] = 2;
  v6[0] = 14;
  v8 = 14;
  sub_262223490(v12, v6, &v8);
  sub_2621D7078(v7, v12);
  v8 = 14;
  v5[0] = 14;
  sub_262223490(v12, &v8, v5);
  sub_2621D7078(v6, v12);
  v2 = 0;
  v12[0] = 0;
  while (1)
  {
    LODWORD(v8) = 0;
    for (i = 1; i != 15; ++i)
    {
      *sub_262212AA8(v7, v12, &v8) = v2 - 7;
      *sub_262212AA8(v6, v12, &v8) = i - 8;
      LODWORD(v8) = i;
    }

    v12[0] = ++v2;
    if (v2 == 14)
    {
      v8 = 0xE00000001;
      v9 = 14;
      sub_26226CB7C(v12, v7, &v8);
      v10 = 0xE00000001;
      v11 = 14;
      sub_26226CB7C(v13, v6, &v10);
      memset(v5, 0, sizeof(v5));
      sub_26226D514();
    }
  }
}

- (RSWallOpeningOnlineOptimizer)init
{
  v7.receiver = self;
  v7.super_class = RSWallOpeningOnlineOptimizer;
  v2 = [(RSWallOpeningOnlineOptimizer *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_isActiveWallEnabled = 1;
    v4 = objc_alloc_init(RSFloorPlan);
    prevFloorPlan = v3->_prevFloorPlan;
    v3->_prevFloorPlan = v4;

    v3->_tracing_map._voxel_sz = 0.05;
    v3->_isCurvedWallEnabled = 0;
  }

  return v3;
}

@end