@interface CATComputableWrapper
- (id)valueForComputedProperty:(id)a3 typeName:(id)a4 propName:(id)a5 params:(id)a6;
@end

@implementation CATComputableWrapper

- (id)valueForComputedProperty:(id)a3 typeName:(id)a4 propName:(id)a5 params:(id)a6
{
  v7 = sub_222D5292C();
  v9 = v8;
  v10 = sub_222D5292C();
  v12 = v11;
  v13 = sub_222D5292C();
  v15 = v14;
  v16 = a6;

  sub_222CE8D40(v7, v9, v10, v12, v13, v15, v16);

  v17 = v26;
  if (v26)
  {
    v18 = __swift_project_boxed_opaque_existential_1(v25, v26);
    v19 = *(v17 - 8);
    v20 = *(v19 + 64);
    MEMORY[0x28223BE20](v18);
    v22 = v25 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v19 + 16))(v22);
    v23 = sub_222D5304C();
    (*(v19 + 8))(v22, v17);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

@end