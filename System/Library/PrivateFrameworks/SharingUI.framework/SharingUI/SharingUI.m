Class initNFHardwareManager()
{
  if (NearFieldLibrary_sOnce != -1)
  {
    initNFHardwareManager_cold_1();
  }

  result = objc_getClass("NFHardwareManager");
  classNFHardwareManager = result;
  getNFHardwareManagerClass = NFHardwareManagerFunction;
  return result;
}

void *__NearFieldLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/NearField.framework/NearField", 2);
  NearFieldLibrary_sLib = result;
  return result;
}

id SFUILinkMetadataSerializationForLocalLowFidelityUseOnly(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [MEMORY[0x1E695DF70] array];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v10 + 1) + 8 * i) dataRepresentationForLocalLowFidelityUseOnly];
        [v2 addObject:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  return v2;
}

void sub_1B9E4DD48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void SFUILinkMetadataSerializationForLocalUseOnly(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = dispatch_get_global_queue(25, 0);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __SFUILinkMetadataSerializationForLocalUseOnly_block_invoke;
  v8[3] = &unk_1E7EE39E8;
  v9 = v3;
  v10 = v4;
  v6 = v4;
  v7 = v3;
  dispatch_async(v5, v8);
}

void __SFUILinkMetadataSerializationForLocalUseOnly_block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF70] array];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v9 + 1) + 8 * v7) dataRepresentationForLocalUseOnly];
        [v2 addObject:v8];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  (*(*(a1 + 40) + 16))();
}

uint64_t sub_1B9E4E458()
{
  v4 = sub_1B9ED8FAC();
  v2 = *(v4 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v5 = (v3 + *(v2 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v4);
  __swift_destroy_boxed_opaque_existential_1(v0 + v5);
  return swift_deallocObject();
}

uint64_t sub_1B9E4E6C4()
{
  v2 = *(sub_1B9ED8FAC() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_1B9E4E980()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1B9E4EC20()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1B9E4EC80()
{

  MEMORY[0x1E69E5920](*(v0 + 40));
  return swift_deallocObject();
}

uint64_t sub_1B9E4ECD0()
{

  MEMORY[0x1E69E5920](*(v0 + 40));
  return swift_deallocObject();
}

uint64_t sub_1B9E4F528()
{
  v2 = *(sub_1B9ED842C() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_1B9E4F70C()
{
  v2 = *(sub_1B9ED842C() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_1B9E50618()
{
  swift_unknownObjectRelease();
  MEMORY[0x1E69E5920](*(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_1B9E50678(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v9 = sub_1B9ED88CC();
  if (a2 == *(*(v9 - 8) + 84))
  {
    return (*(*(v9 - 8) + 48))(a1, a2, v9);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v4 = -1;
    if (*(a1 + *(a3 + 20) + 8) < 0x100000000uLL)
    {
      v4 = *(a1 + *(a3 + 20) + 8);
    }

    return (v4 + 1);
  }

  else
  {
    __break(1u);
  }

  return v5;
}

uint64_t sub_1B9E50794(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  result = sub_1B9ED88CC();
  if (a3 == *(*(result - 8) + 84))
  {
    return (*(*(result - 8) + 56))(a1, a2, a2, result);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = a2 - 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B9E50888()
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE6498);
  v2 = *(v4 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  MEMORY[0x1E69E5920](*(v0 + 32));
  (*(v2 + 8))(v0 + v3, v4);
  return swift_deallocObject();
}

uint64_t sub_1B9E5098C()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE6498) - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1B9E50DFC()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE6498) - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_1B9E50ED4()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE6498) - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_1B9E50FAC()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE64B8) - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_1B9E512F4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBE64E0);
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

void sub_1B9E51D4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B9E547E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B9E54C1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

float32x4_t *CMOQuaternion::operator*@<X0>(uint64_t a1@<X0>, float *a2@<X1>, float32x4_t *a3@<X8>, double a4@<D0>)
{
  v4 = *(a1 + 8);
  LODWORD(a4) = *(a1 + 12);
  v5 = a2[1];
  v6 = *(a1 + 4);
  v7 = a2[2];
  v8 = a2[3];
  v9 = (((v4 * v5) + (*&a4 * *a2)) - (v6 * v7)) + (*a1 * v8);
  v10 = (((*&a4 * v5) - (v4 * *a2)) + (*a1 * v7)) + (v6 * v8);
  v11 = (((v6 * *a2) - (*a1 * v5)) + (*&a4 * v7)) + (v4 * v8);
  v12 = (-(v6 * v5) - (*a1 * *a2)) - (v4 * v7);
  a3->f32[0] = v9;
  a3->f32[1] = v10;
  *&a4 = v12 + (*&a4 * v8);
  a3->f32[2] = v11;
  a3->i32[3] = LODWORD(a4);
  return CMOQuaternion::normalize(a3, a4);
}

float32x4_t *CMOQuaternion::conj@<X0>(float32x2_t *this@<X0>, float32x4_t *a2@<X8>, double a3@<D0>)
{
  v3 = this[1].i32[1];
  *&a3 = -this[1].f32[0];
  *a2->f32 = vneg_f32(*this);
  a2->i32[2] = LODWORD(a3);
  a2->i32[3] = v3;
  return CMOQuaternion::normalize(a2, a3);
}

float CMOQuaternion::roll(CMOQuaternion *this)
{
  v1 = *(this + 1);
  v2 = (*this * *(this + 2)) - (*(this + 3) * v1);
  return -atan2f(v2 + v2, (((v1 * v1) + (*this * *this)) * -2.0) + 1.0);
}

float CMOQuaternion::yaw(CMOQuaternion *this)
{
  v1 = *(this + 2);
  v2 = (*this * *(this + 1)) - (*(this + 3) * v1);
  return -atan2f(v2 + v2, (((v1 * v1) + (*this * *this)) * -2.0) + 1.0);
}

float CMOQuaternion::rotateVectorInPlace(float *a1, float *a2)
{
  v3 = a1[2];
  v2 = a1[3];
  v4 = v2 + v2;
  v5 = *a1;
  v6 = a1[1];
  v7 = v6 + v6;
  v8 = v2 * (v2 + v2);
  v9 = ((v6 + v6) * v6) + -1.0;
  v10 = ((v3 + v3) * v3) + -1.0;
  v11 = (v5 + v5) * v6;
  v12 = (v5 + v5) * v3;
  v13 = v2 * (v5 + v5);
  v14 = v7 * v3;
  v15 = v2 * v7;
  v16 = v4 * v3;
  v17 = a2[1];
  v18 = a2[2];
  v19 = (((v11 + v16) * v17) + ((v8 + (((v5 + v5) * v5) + -1.0)) * *a2)) + ((v12 - v15) * v18);
  v20 = (((v8 + v9) * v17) + ((v11 - v16) * *a2)) + ((v13 + v14) * v18);
  result = (((v14 - v13) * v17) + ((v12 + v15) * *a2)) + ((v8 + v10) * v18);
  *a2 = v19;
  a2[1] = v20;
  a2[2] = result;
  return result;
}

float CMOQuaternion::rotateVector(float *a1, float a2, float a3, float a4)
{
  v5[0] = a2;
  v5[1] = a3;
  v5[2] = a4;
  CMOQuaternion::rotateVectorInPlace(a1, v5);
  return v5[0];
}

float CMOQuaternion::rotateFrameInPlace(float *a1, float *a2)
{
  v3 = a1[2];
  v2 = a1[3];
  v4 = v2 + v2;
  v5 = *a1;
  v6 = a1[1];
  v7 = v6 + v6;
  v8 = v2 * (v2 + v2);
  v9 = ((v6 + v6) * v6) + -1.0;
  v10 = ((v3 + v3) * v3) + -1.0;
  v11 = (v5 + v5) * v6;
  v12 = (v5 + v5) * v3;
  v13 = v2 * (v5 + v5);
  v14 = v7 * v3;
  v15 = v2 * v7;
  v16 = v4 * v3;
  v17 = a2[1];
  v18 = a2[2];
  v19 = (((v11 - v16) * v17) + ((v8 + (((v5 + v5) * v5) + -1.0)) * *a2)) + ((v12 + v15) * v18);
  v20 = (((v8 + v9) * v17) + ((v11 + v16) * *a2)) + ((v14 - v13) * v18);
  result = (((v13 + v14) * v17) + ((v12 - v15) * *a2)) + ((v8 + v10) * v18);
  *a2 = v19;
  a2[1] = v20;
  a2[2] = result;
  return result;
}

float CMOQuaternion::rotateFrame(float *a1, float a2, float a3, float a4)
{
  v5[0] = a2;
  v5[1] = a3;
  v5[2] = a4;
  CMOQuaternion::rotateFrameInPlace(a1, v5);
  return v5[0];
}

void CMOQuaternion::angleAxis(float *a1, float *a2)
{
  v4 = 0;
  v5 = 0.0;
  do
  {
    v5 = v5 + (a2[v4] * a2[v4]);
    ++v4;
  }

  while (v4 != 3);
  v6 = sqrtf(v5);
  v7 = 0.5;
  v8 = v6 * 0.5;
  if ((v6 * 0.5) > 0.0)
  {
    v7 = (sinf(v6 * 0.5) / v8) * 0.5;
  }

  *a1 = v7 * *a2;
  a1[1] = v7 * a2[1];
  a1[2] = v7 * a2[2];
  a1[3] = cosf(v8);
}

float CMOQuaternion::angleAxis(CMOQuaternion *this)
{
  v1 = 0;
  v2 = *this;
  v3 = *(this + 1);
  v4 = *(this + 2);
  v9[0] = *this;
  v9[1] = v3;
  v9[2] = v4;
  v5 = 0.0;
  do
  {
    v5 = v5 + (*&v9[v1] * *&v9[v1]);
    ++v1;
  }

  while (v1 != 3);
  v6 = sqrtf(v5);
  if (v6 >= 0.00000011921)
  {
    v7 = atan2f(v6, *(this + 3));
    return v2 * ((v7 + v7) / v6);
  }

  return v2;
}

BOOL CMOQuaternion::northAndGravity(float *a1, float *a2, uint64_t a3, float a4, float a5, float a6, float a7, float a8, float a9, double a10, double a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, float a18)
{
  v155 = __PAIR64__(LODWORD(a5), LODWORD(a4));
  v156 = a6;
  v153 = __PAIR64__(LODWORD(a8), LODWORD(a7));
  v154 = a9;
  v151 = a17;
  v152 = a18;
  if ((atomic_load_explicit(&qword_1EBBE6B78, memory_order_acquire) & 1) == 0)
  {
    CMOQuaternion::northAndGravity();
  }

  v19 = 0;
  v20 = 0.0;
  do
  {
    v20 = v20 + (*(&v155 + v19) * *(&v155 + v19));
    v19 += 4;
  }

  while (v19 != 12);
  if (sqrtf(v20) == 0.0)
  {
    return 0;
  }

  v21 = 0;
  v22 = 0.0;
  do
  {
    v22 = v22 + (*(&v153 + v21) * *(&v153 + v21));
    v21 += 4;
  }

  while (v21 != 12);
  if (sqrtf(v22) == 0.0)
  {
    return 0;
  }

  v23 = 0;
  *&v136 = v155;
  *(&v136 + 2) = v156;
  v24 = 0.0;
  do
  {
    v24 = v24 + (*(&v136 + v23) * *(&v136 + v23));
    v23 += 4;
  }

  while (v23 != 12);
  v25 = 0;
  v26 = sqrtf(v24);
  v27 = *&v155 / v26;
  v28 = *(&v155 + 1) / v26;
  v29 = v156 / v26;
  *&v155 = *&v155 / v26;
  *(&v155 + 1) = *(&v155 + 1) / v26;
  v156 = v156 / v26;
  v30 = *(&v153 + 1);
  v31 = v154;
  *&v136 = v153;
  *(&v136 + 2) = v154;
  v32 = 0.0;
  do
  {
    v32 = v32 + (*(&v136 + v25) * *(&v136 + v25));
    v25 += 4;
  }

  while (v25 != 12);
  v33 = 0;
  v34 = sqrtf(v32);
  v37 = v154 / v34;
  *&v153 = *&v153 / v34;
  v35 = *&v153;
  *(&v153 + 1) = *(&v153 + 1) / v34;
  v36 = *(&v153 + 1);
  v154 = v154 / v34;
  v38 = (v28 * (v31 / v34)) - (v29 * (v30 / v34));
  v39 = (v29 * *&v153) - (v27 * (v31 / v34));
  v40 = (v27 * *(&v153 + 1)) - (v28 * *&v153);
  v148 = v38;
  v149 = v39;
  v150 = v40;
  v41 = 0.0;
  do
  {
    v41 = v41 + (*(&v148 + v33) * *(&v148 + v33));
    v33 += 4;
  }

  while (v33 != 12);
  v42 = sqrtf(v41);
  if (v42 < *&_MergedGlobals)
  {
    return 0;
  }

  v44 = 0;
  v45 = v38 / v42;
  v46 = v39 / v42;
  v148 = v38 / v42;
  v149 = v39 / v42;
  v47 = v40 / v42;
  v150 = v47;
  v48 = *(&v151 + 1);
  v49 = v152;
  *&v136 = v151;
  *(&v136 + 2) = v152;
  v50 = 0.0;
  do
  {
    v50 = v50 + (*(&v136 + v44) * *(&v136 + v44));
    v44 += 4;
  }

  while (v44 != 12);
  v51 = 0;
  v52 = sqrtf(v50);
  *&v151 = *&v151 / v52;
  v53 = *&v151;
  *(&v151 + 1) = *(&v151 + 1) / v52;
  v54 = *(&v151 + 1);
  v152 = v152 / v52;
  v55 = v152;
  v146 = 0;
  v147 = -1082130432;
  v56 = ((v49 / v52) * -0.0) - (v48 / v52);
  v57 = 0.0;
  *&v136 = v56;
  *(&v136 + 1) = *&v151 + (v152 * 0.0);
  *(&v136 + 2) = (*(&v151 + 1) * -0.0) + (*&v151 * 0.0);
  do
  {
    v57 = v57 + (*(&v136 + v51) * *(&v136 + v51));
    v51 += 4;
  }

  while (v51 != 12);
  v58 = 0;
  v111 = -*&v151;
  v59 = sqrtf(v57);
  v145[0] = v56 / v59;
  v145[1] = (*&v151 + (v152 * 0.0)) / v59;
  v145[2] = ((*(&v151 + 1) * -0.0) + (*&v151 * 0.0)) / v59;
  v60 = (*(&v153 + 1) * v47) - (v37 * v46);
  v114 = -*&v153;
  v61 = (v37 * v45) - (*&v153 * v47);
  v62 = (*&v153 * v46) - (*(&v153 + 1) * v45);
  *&v136 = __PAIR64__(LODWORD(v61), LODWORD(v60));
  *(&v136 + 2) = v62;
  v63 = 0.0;
  do
  {
    v63 = v63 + (*(&v136 + v58) * *(&v136 + v58));
    v58 += 4;
  }

  while (v58 != 12);
  v64 = 0;
  v110 = -v152;
  v65 = sqrtf(v63);
  v66 = v60 / v65;
  v67 = v61 / v65;
  v68 = v62 / v65;
  *&v155 = v60 / v65;
  *(&v155 + 1) = v67;
  v156 = v62 / v65;
  v142 = 0u;
  v143 = 0u;
  v144 = 0;
  v69 = &v142;
  do
  {
    v70 = 0;
    v71 = *(&v155 + v64);
    v72 = v69;
    do
    {
      *v72 = v71 * *(&v151 + v70);
      v72 += 3;
      v70 += 4;
    }

    while (v70 != 12);
    ++v64;
    v69 = (v69 + 4);
  }

  while (v64 != 3);
  v73 = 0;
  v141 = 0;
  v139 = 0u;
  v140 = 0u;
  v74 = &v139;
  do
  {
    v75 = 0;
    v76 = *(&v153 + v73);
    v77 = v74;
    do
    {
      *v77 = v76 * *(&v146 + v75);
      v77 += 3;
      v75 += 4;
    }

    while (v75 != 12);
    ++v73;
    v74 = (v74 + 4);
  }

  while (v73 != 3);
  v112 = v53;
  v78 = 0;
  v138 = 0;
  v136 = 0u;
  v137 = 0u;
  v79 = &v136;
  do
  {
    v80 = 0;
    v81 = *(&v148 + v78);
    v82 = v79;
    do
    {
      *v82 = v81 * v145[v80];
      v82 += 3;
      ++v80;
    }

    while (v80 != 3);
    ++v78;
    v79 = (v79 + 4);
  }

  while (v78 != 3);
  v83 = *a1;
  v84 = ((a1[1] * a1[1]) + (v83 * v83)) + ((v83 + v83) * a1[1]);
  v134[0] = v136;
  v134[1] = v137;
  v135 = v138;
  v132[0] = v142;
  v132[1] = v143;
  v133 = v144;
  v120 = 0;
  v121 = v68;
  v122 = -v67;
  v113 = v84;
  v85 = sqrtf(v84);
  v123 = -v68;
  v124 = 0;
  v125 = v66;
  v126 = v67;
  v127 = -v66;
  v128 = 0;
  operator*<float,3ul,3ul,3ul>(&v120, &v136, v129);
  LODWORD(v117) = 0;
  *(&v117 + 1) = v55;
  *(&v117 + 2) = -v54;
  *(&v117 + 3) = v110;
  LODWORD(v118) = 0;
  *(&v118 + 4) = __PAIR64__(LODWORD(v54), LODWORD(v112));
  *(&v118 + 3) = v111;
  v119 = 0;
  operator*<float,3ul,3ul,3ul>(v129, &v117, v130);
  for (i = 0; i != 36; i += 4)
  {
    *(v132 + i) = *(v132 + i) - *(v130 + i);
  }

  v87 = 0;
  v88 = 1.0 / v85;
  do
  {
    *(v132 + v87) = (v83 * (1.0 / v85)) * *(v132 + v87);
    v87 += 4;
  }

  while (v87 != 36);
  for (j = 0; j != 36; j += 4)
  {
    *(v134 + j) = *(v132 + j) + *(v134 + j);
  }

  v90 = a1[1];
  v115[0] = v139;
  v115[1] = v140;
  v116 = v141;
  v120 = 0;
  v121 = v37;
  v122 = -v36;
  v123 = -v37;
  v124 = 0;
  v125 = v35;
  v126 = v36;
  v127 = v114;
  v128 = 0;
  operator*<float,3ul,3ul,3ul>(&v120, &v136, v129);
  v117 = xmmword_1B9EDE900;
  v118 = xmmword_1B9EDE910;
  v119 = 0;
  operator*<float,3ul,3ul,3ul>(v129, &v117, v130);
  for (k = 0; k != 36; k += 4)
  {
    *(v115 + k) = *(v115 + k) - *(v130 + k);
  }

  for (m = 0; m != 36; m += 4)
  {
    *(v115 + m) = (v88 * v90) * *(v115 + m);
  }

  for (n = 0; n != 36; n += 4)
  {
    *(v134 + n) = *(v115 + n) + *(v134 + n);
  }

  CMOQuaternion::rotationMatrix(a2, v134);
  v94 = 0;
  v95 = *a1;
  do
  {
    *(&v142 + v94) = v95 * *(&v142 + v94);
    v94 += 4;
  }

  while (v94 != 36);
  v96 = 0;
  v97 = a1[1];
  do
  {
    *(&v139 + v96) = v97 * *(&v139 + v96);
    v96 += 4;
  }

  while (v96 != 36);
  for (ii = 0; ii != 36; ii += 4)
  {
    *(&v142 + ii) = *(&v139 + ii) + *(&v142 + ii);
  }

  v99 = 0;
  v130[0] = v142;
  v130[1] = v143;
  v131 = v144;
  v100 = 0.0;
  do
  {
    v100 = v100 + (*(v130 + v99) * *(v130 + v99));
    v99 += 4;
  }

  while (v99 != 36);
  v101 = sqrtf(v100);
  v102 = (v113 - (v101 * v101)) * 0.5;
  result = v102 != 0.0;
  if (v102 != 0.0)
  {
    v103 = 0;
    v104 = v88 * (1.0 / v102);
    v105 = v130;
    do
    {
      v106 = 0;
      v107 = v130;
      do
      {
        v108 = 0;
        v109 = 0.0;
        do
        {
          v109 = v109 + (*(v105 + v108) * *(v107 + v108));
          v108 += 12;
        }

        while (v108 != 36);
        *(a3 + 4 * (3 * v106++ + v103)) = v104 * v109;
        v107 = (v107 + 4);
      }

      while (v106 != 3);
      *(a3 + 16 * v103) = v88 + *(a3 + 16 * v103);
      ++v103;
      v105 = (v105 + 4);
    }

    while (v103 != 3);
  }

  return result;
}

uint64_t operator*<float,3ul,3ul,3ul>@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = 0;
  *(a3 + 32) = 0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  v4 = (result + 12);
  do
  {
    v5 = 0;
    v6 = *(result + 4 * v3);
    v7 = a2 + 4;
    do
    {
      v8 = 0;
      v9 = v6 * *(a2 + 12 * v5);
      v10 = v4;
      do
      {
        v11 = *v10;
        v10 += 3;
        v9 = v9 + (v11 * *(v7 + v8));
        v8 += 4;
      }

      while (v8 != 8);
      *(a3 + 4 * (3 * v5++ + v3)) = v9;
      v7 += 12;
    }

    while (v5 != 3);
    ++v3;
    ++v4;
  }

  while (v3 != 3);
  return result;
}

float CMOQuaternion::rotationMatrix(float *a1, float *a2)
{
  v2 = *a2;
  v3 = a2[4];
  v4 = a2[8];
  v5 = (*a2 + v3) + v4;
  if (v5 <= 0.0)
  {
    if (v2 > v3)
    {
      v8 = v2 == v4;
      v9 = v2 < v4;
    }

    else
    {
      v8 = 1;
      v9 = 0;
    }

    if (v9 || v8)
    {
      if (v3 <= v4)
      {
        v14 = ((-v2 - v3) + v4) + 1.0;
        v15 = 0.5 / sqrtf(v14);
        a1[2] = v14 * v15;
        a1[3] = v15 * (a2[3] - a2[1]);
        *a1 = v15 * (a2[2] + a2[6]);
        result = v15 * (a2[7] + a2[5]);
        a1[1] = result;
      }

      else
      {
        v10 = ((v3 - v2) - v4) + 1.0;
        v11 = 0.5 / sqrtf(v10);
        a1[1] = v10 * v11;
        *a1 = v11 * (a2[3] + a2[1]);
        a1[3] = v11 * (a2[2] - a2[6]);
        result = v11 * (a2[7] + a2[5]);
        a1[2] = result;
      }
    }

    else
    {
      v12 = ((v2 - v3) - v4) + 1.0;
      v13 = 0.5 / sqrtf(v12);
      *a1 = v12 * v13;
      a1[1] = v13 * (a2[3] + a2[1]);
      a1[2] = v13 * (a2[2] + a2[6]);
      result = v13 * (a2[7] - a2[5]);
      a1[3] = result;
    }
  }

  else
  {
    v6 = 0.5 / sqrtf(v5 + 1.0);
    a1[3] = (v5 + 1.0) * v6;
    a1[2] = v6 * (a2[3] - a2[1]);
    a1[1] = v6 * (a2[2] - a2[6]);
    result = v6 * (a2[7] - a2[5]);
    *a1 = result;
  }

  return result;
}

float CMOQuaternion::rotationMatrix@<S0>(CMOQuaternion *this@<X0>, float *a2@<X8>)
{
  v3 = *(this + 2);
  v2 = *(this + 3);
  v4 = v2 + v2;
  v5 = *this;
  v6 = *(this + 1);
  v7 = v6 + v6;
  v8 = v2 * (v2 + v2);
  v9 = ((v6 + v6) * v6) + -1.0;
  v10 = ((v3 + v3) * v3) + -1.0;
  v11 = (v5 + v5) * v6;
  v12 = (v5 + v5) * v3;
  v13 = v2 * (v5 + v5);
  v14 = v7 * v3;
  v15 = v2 * v7;
  v16 = v4 * v3;
  v17 = v12 + v15;
  result = v12 - v15;
  *a2 = v8 + (((*this + *this) * *this) + -1.0);
  a2[1] = v11 - v16;
  a2[2] = v17;
  a2[3] = v11 + v16;
  a2[4] = v8 + v9;
  a2[5] = v14 - v13;
  a2[6] = result;
  a2[7] = v13 + v14;
  a2[8] = v8 + v10;
  return result;
}

float CMOQuaternion::rotationMatrixTranspose@<S0>(CMOQuaternion *this@<X0>, float *a2@<X8>)
{
  v3 = *(this + 2);
  v2 = *(this + 3);
  v4 = v2 + v2;
  v5 = *this;
  v6 = *(this + 1);
  v7 = v6 + v6;
  v8 = v2 * (v2 + v2);
  v9 = ((v6 + v6) * v6) + -1.0;
  v10 = ((v3 + v3) * v3) + -1.0;
  v11 = (v5 + v5) * v6;
  v12 = (v5 + v5) * v3;
  v13 = v2 * (v5 + v5);
  v14 = v7 * v3;
  v15 = v2 * v7;
  v16 = v4 * v3;
  v17 = v12 - v15;
  result = v12 + v15;
  *a2 = v8 + (((*this + *this) * *this) + -1.0);
  a2[1] = v11 + v16;
  a2[2] = v17;
  a2[3] = v11 - v16;
  a2[4] = v8 + v9;
  a2[5] = v13 + v14;
  a2[6] = result;
  a2[7] = v14 - v13;
  a2[8] = v8 + v10;
  return result;
}

float32x4_t *CMOQuaternion::normalize(float32x4_t *this, double a2)
{
  *&a2 = sqrtf((((this->f32[1] * this->f32[1]) + (this->f32[0] * this->f32[0])) + (this->f32[2] * this->f32[2])) + (this->f32[3] * this->f32[3]));
  if (fabsf(*&a2 + -1.0) >= 0.00000011921)
  {
    if (*&a2 == 0.0)
    {
      v2 = xmmword_1B9EDE920;
    }

    else
    {
      v2 = vdivq_f32(*this, vdupq_lane_s32(*&a2, 0));
    }

    *this = v2;
  }

  return this;
}

BOOL CMOQuaternion::inverted(CMOQuaternion *this)
{
  v1 = *(this + 2);
  v2 = *(this + 3);
  v3 = *(this + 1);
  v4 = ((v2 * v3) - (*this * v1)) + ((v2 * v3) - (*this * v1));
  v5 = -(v2 * *this) - (v3 * v1);
  return ((((v3 * v3) + (*this * *this)) * 2.0) + -1.0) > sqrtf(((v5 + v5) * (v5 + v5)) + (v4 * v4));
}

void CMOQuaternion::headingReference(CMOQuaternion *this)
{
  if ((atomic_load_explicit(&qword_1EBBE6B80, memory_order_acquire) & 1) == 0)
  {
    v19 = this;
    CMOQuaternion::headingReference();
    this = v19;
  }

  v1 = 0;
  v2 = *(this + 2);
  v3 = *(this + 3);
  v4 = *(this + 1);
  v5 = ((v3 * v4) - (*this * v2)) + ((v3 * v4) - (*this * v2));
  v6 = -(v3 * *this) - (v4 * v2);
  v7 = v6 + v6;
  v8 = (((v4 * v4) + (*this * *this)) * 2.0) + -1.0;
  v9 = sqrtf((v7 * v7) + (v5 * v5));
  v10 = 1.0;
  if (v8 <= v9)
  {
    v10 = -1.0;
  }

  v23 = 0;
  v24 = 1065353216;
  v11 = v8 * v10;
  v12 = (v8 * -0.0) + (v7 * v10);
  v13 = -(v5 * v10);
  v14 = 0.0;
  v15 = v13 + (v8 * 0.0);
  v16 = (v7 * -0.0) + (v5 * 0.0);
  *v22 = v12;
  *&v22[1] = v15;
  *&v22[2] = v16;
  do
  {
    v14 = v14 + (*&v22[v1] * *&v22[v1]);
    ++v1;
  }

  while (v1 != 3);
  v17 = sqrtf(v14);
  if (v17 > *&dword_1EBBE6B74)
  {
    v21[0] = 0;
    v21[1] = 0;
    v18 = -atan2f(v9, v11) / v17;
    v20[0] = v12 * v18;
    v20[1] = v15 * v18;
    v20[2] = v16 * v18;
    CMOQuaternion::angleAxis(v21, v20);
    CMOQuaternion::rotateFrameInPlace(v21, &v23);
  }
}

float CMOQuaternion::heading(CMOQuaternion *this)
{
  CMOQuaternion::headingReference(this);
  v6 = v2;
  v7 = v3;
  v8 = v4;
  CMOQuaternion::rotateFrameInPlace(this, &v6);
    ;
  }

    ;
  }

  return result;
}

float *CMMath::wrap(float *this, float *a2)
{
  v2 = *this;
  if (*this < 0.0)
  {
    do
    {
      v2 = v2 + 360.0;
    }

    while (v2 < 0.0);
    *this = v2;
  }

  if (v2 >= 360.0)
  {
    do
    {
      v2 = v2 + -360.0;
    }

    while (v2 >= 360.0);
    *this = v2;
  }

  return this;
}

Class initAMSMediaTask()
{
  if (AppleMediaServicesLibrary_sOnce != -1)
  {
    initAMSMediaTask_cold_1();
  }

  result = objc_getClass("AMSMediaTask");
  classAMSMediaTask = result;
  getAMSMediaTaskClass[0] = AMSMediaTaskFunction;
  return result;
}

void *__AppleMediaServicesLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/AppleMediaServices.framework/AppleMediaServices", 2);
  AppleMediaServicesLibrary_sLib = result;
  return result;
}

Class initAMSBagKeySet()
{
  if (AppleMediaServicesLibrary_sOnce != -1)
  {
    initAMSMediaTask_cold_1();
  }

  result = objc_getClass("AMSBagKeySet");
  classAMSBagKeySet = result;
  getAMSBagKeySetClass[0] = AMSBagKeySetFunction;
  return result;
}

Class initAMSBag()
{
  if (AppleMediaServicesLibrary_sOnce != -1)
  {
    initAMSMediaTask_cold_1();
  }

  result = objc_getClass("AMSBag");
  classAMSBag = result;
  getAMSBagClass[0] = AMSBagFunction;
  return result;
}

Class initACAccountStore()
{
  if (AccountsLibrary_sOnce != -1)
  {
    initACAccountStore_cold_1();
  }

  result = objc_getClass("ACAccountStore");
  classACAccountStore = result;
  getACAccountStoreClass[0] = ACAccountStoreFunction;
  return result;
}

void *__AccountsLibrary_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/Accounts.framework/Accounts", 2);
  AccountsLibrary_sLib = result;
  return result;
}

id initValACAccountTypeIdentifieriTunesStore()
{
  if (softLinkOnceACAccountTypeIdentifieriTunesStore != -1)
  {
    initValACAccountTypeIdentifieriTunesStore_cold_1();
  }

  v1 = constantValACAccountTypeIdentifieriTunesStore;

  return v1;
}

void __initValACAccountTypeIdentifieriTunesStore_block_invoke()
{
  if (AccountsLibrary_sOnce != -1)
  {
    initACAccountStore_cold_1();
  }

  v0 = dlsym(AccountsLibrary_sLib, "ACAccountTypeIdentifieriTunesStore");
  if (v0)
  {
    objc_storeStrong(&constantValACAccountTypeIdentifieriTunesStore, *v0);
  }

  getACAccountTypeIdentifieriTunesStore = ACAccountTypeIdentifieriTunesStoreFunction;
}

Class initAMSMediaArtwork()
{
  if (AppleMediaServicesLibrary_sOnce != -1)
  {
    initAMSMediaTask_cold_1();
  }

  result = objc_getClass("AMSMediaArtwork");
  classAMSMediaArtwork = result;
  getAMSMediaArtworkClass[0] = AMSMediaArtworkFunction;
  return result;
}

uint64_t initValAMSMediaArtworkCropStyleBoundedBox()
{
  if (AppleMediaServicesLibrary_sOnce != -1)
  {
    initAMSMediaTask_cold_1();
  }

  v0 = dlsym(AppleMediaServicesLibrary_sLib, "AMSMediaArtworkCropStyleBoundedBox");
  if (v0)
  {
    result = *v0;
    constantValAMSMediaArtworkCropStyleBoundedBox = result;
  }

  else
  {
    result = constantValAMSMediaArtworkCropStyleBoundedBox;
  }

  getAMSMediaArtworkCropStyleBoundedBox[0] = AMSMediaArtworkCropStyleBoundedBoxFunction;
  return result;
}

uint64_t initValAMSMediaArtworkFormatPNG()
{
  if (AppleMediaServicesLibrary_sOnce != -1)
  {
    initAMSMediaTask_cold_1();
  }

  v0 = dlsym(AppleMediaServicesLibrary_sLib, "AMSMediaArtworkFormatPNG");
  if (v0)
  {
    result = *v0;
    constantValAMSMediaArtworkFormatPNG = result;
  }

  else
  {
    result = constantValAMSMediaArtworkFormatPNG;
  }

  getAMSMediaArtworkFormatPNG[0] = AMSMediaArtworkFormatPNGFunction;
  return result;
}

Class initISIcon()
{
  if (IconServicesLibrary_sOnce != -1)
  {
    initISIcon_cold_1();
  }

  result = objc_getClass("ISIcon");
  classISIcon = result;
  getISIconClass[0] = ISIconFunction;
  return result;
}

void *__IconServicesLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/IconServices.framework/IconServices", 2);
  IconServicesLibrary_sLib = result;
  return result;
}

Class initISImageDescriptor()
{
  if (IconServicesLibrary_sOnce != -1)
  {
    initISIcon_cold_1();
  }

  result = objc_getClass("ISImageDescriptor");
  classISImageDescriptor = result;
  getISImageDescriptorClass[0] = ISImageDescriptorFunction;
  return result;
}

void sub_1B9E5A540(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_1B9E5A5C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = SFAirDropMagicHeadViewController;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1B9E5A770(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v15 + 32));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B9E5D12C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9)
{
  objc_destroyWeak((v11 + 32));

  objc_destroyWeak((v12 - 40));
  _Unwind_Resume(a1);
}

Class ___ZL23getCMMotionManagerClassv_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  if (!CoreMotionLibraryCore(char **)::frameworkLibrary)
  {
    v7[1] = MEMORY[0x1E69E9820];
    v7[2] = 3221225472;
    v7[3] = ___ZL21CoreMotionLibraryCorePPc_block_invoke;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_1E7EE3C28;
    v9 = 0;
    CoreMotionLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
  }

  if (!CoreMotionLibraryCore(char **)::frameworkLibrary)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CoreMotionLibrary()"];
    [v3 handleFailureInFunction:v4 file:@"SFAirDropMagicHeadViewController.m" lineNumber:21 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("CMMotionManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCMMotionManagerClass()_block_invoke"];
    [v5 handleFailureInFunction:v6 file:@"SFAirDropMagicHeadViewController.m" lineNumber:22 description:{@"Unable to find class %s", "CMMotionManager"}];

LABEL_10:
    __break(1u);
  }

  getCMMotionManagerClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t ___ZL21CoreMotionLibraryCorePPc_block_invoke()
{
  result = _sl_dlopen();
  CoreMotionLibraryCore(char **)::frameworkLibrary = result;
  return result;
}

id SFAdjustmentFiltersForAssetTypeAndURL(int a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  v5 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:v3 error:0];

  if (v5)
  {
    if (a1 == 1 || a1 == 2)
    {
      CFDictionaryGetTypeID();
      v6 = CFDictionaryGetTypedValue();
    }

    else
    {
      v6 = 0;
    }

    v26 = 0;
    CFDictionaryGetDouble();
    v8 = v7;
    v9 = objc_alloc(MEMORY[0x1E6979378]);
    v10 = [v9 initWithType:*MEMORY[0x1E6979880]];
    v18 = v8;
    v19 = *(MEMORY[0x1E6979280] + 4);
    v20 = *(MEMORY[0x1E6979280] + 20);
    v21 = v8;
    v22 = *(MEMORY[0x1E6979280] + 28);
    v23 = *(MEMORY[0x1E6979280] + 44);
    v24 = v8;
    *v25 = *(MEMORY[0x1E6979280] + 52);
    *&v25[12] = *(MEMORY[0x1E6979280] + 64);
    v11 = [MEMORY[0x1E696B098] valueWithCAColorMatrix:&v18];
    [v10 setValue:v11 forKey:@"inputColorMatrix"];

    [v4 addObject:v10];
    CFDictionaryGetDouble();
    if (!v26)
    {
      v13 = v12;
      v14 = objc_alloc(MEMORY[0x1E6979378]);
      v15 = [v14 initWithType:*MEMORY[0x1E6979818]];
      v16 = [MEMORY[0x1E696AD98] numberWithDouble:v13];
      [v15 setValue:v16 forKey:@"inputAmount"];

      [v4 addObject:v15];
    }
  }

  return v4;
}

id SFPlaybackTimeRangesFromFeaturesTimeURL(void *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_opt_new();
  [MEMORY[0x1E695DEC8] arrayWithContentsOfURL:v1 error:0];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = v21 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v19 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v17 = 0;
      CFDictionaryGetDouble();
      if (v17)
      {
        break;
      }

      v9 = v8;
      CFDictionaryGetDouble();
      if (v17)
      {
        break;
      }

      v11 = v10;
      memset(&v16, 0, sizeof(v16));
      CMTimeMakeWithSeconds(&v14.start, v9, 1000);
      CMTimeMakeWithSeconds(&duration, v11, 1000);
      CMTimeRangeMake(&v16, &v14.start, &duration);
      v14 = v16;
      v12 = [MEMORY[0x1E696B098] valueWithCMTimeRange:&v14];
      [v2 addObject:v12];

      if (v5 == ++v7)
      {
        v5 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  return v2;
}

void sub_1B9E61134(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id a33)
{
  objc_destroyWeak((v33 + 40));
  objc_destroyWeak((v33 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a33);
  _Unwind_Resume(a1);
}

void sub_1B9E6404C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B9E64A34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class initLPLinkMetadataObserver()
{
  if (LinkPresentationLibrary_sOnce != -1)
  {
    initLPLinkMetadataObserver_cold_1();
  }

  result = objc_getClass("LPLinkMetadataObserver");
  classLPLinkMetadataObserver = result;
  getLPLinkMetadataObserverClass = LPLinkMetadataObserverFunction;
  return result;
}

void *__LinkPresentationLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/LinkPresentation.framework/LinkPresentation", 2);
  LinkPresentationLibrary_sLib = result;
  return result;
}

id OUTLINED_FUNCTION_1_0(id a1)
{

  return a1;
}

__CFString *SFOperationEventToString(uint64_t a1)
{
  if ((a1 - 1) > 0xE)
  {
    return @"?";
  }

  else
  {
    return off_1E7EE3E90[a1 - 1];
  }
}

void sub_1B9E67104(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 200), 8);
  _Block_object_dispose((v1 - 152), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

Class initUMUserManager()
{
  if (UserManagementLibrary_sOnce != -1)
  {
    initUMUserManager_cold_1();
  }

  result = objc_getClass("UMUserManager");
  classUMUserManager = result;
  getUMUserManagerClass[0] = UMUserManagerFunction;
  return result;
}

void *__UserManagementLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/UserManagement.framework/UserManagement", 2);
  UserManagementLibrary_sLib = result;
  return result;
}

void sub_1B9E678A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak((v26 + 32));
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B9E6CE00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B9E71F94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B9E721F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B9E72434(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B9E72A90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPLPhotoLibraryClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!PhotoLibraryServicesLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __PhotoLibraryServicesLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E7EE4268;
    v5 = 0;
    PhotoLibraryServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!PhotoLibraryServicesLibraryCore_frameworkLibrary)
  {
    __getPLPhotoLibraryClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("PLPhotoLibrary");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPLPhotoLibraryClass_block_invoke_cold_1();
  }

  getPLPhotoLibraryClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __PhotoLibraryServicesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  PhotoLibraryServicesLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t cnBackgroundStyleFromSFBackgroundStyle(uint64_t a1)
{
  if ((a1 - 2) >= 3)
  {
    return 0;
  }

  else
  {
    return a1 - 1;
  }
}

void OUTLINED_FUNCTION_0_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 2u);
}

id getCachedPreferredItemSizesByString()
{
  v0 = __cachedPreferredItemSizesByString;
  if (!__cachedPreferredItemSizesByString)
  {
    v1 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    v2 = __cachedPreferredItemSizesByString;
    __cachedPreferredItemSizesByString = v1;

    v0 = __cachedPreferredItemSizesByString;
  }

  return v0;
}

id createNameLabel(void *a1)
{
  v1 = MEMORY[0x1E69DCC10];
  v2 = a1;
  v3 = objc_alloc_init(v1);
  v4 = [MEMORY[0x1E69DC938] currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if (v5 == 6)
  {
    [MEMORY[0x1E69DC888] systemWhiteColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] labelColor];
  }
  v6 = ;
  [v3 setTextColor:v6];

  v7 = [v3 _screen];
  v8 = _SFPersonLabelFont();
  [v3 setFont:v8];

  v9 = [MEMORY[0x1E69DC888] clearColor];
  [v3 setBackgroundColor:v9];

  v10 = UIContentSizeCategoryCompareToCategory(*MEMORY[0x1E69DDC58], v2);
  if (v10 == NSOrderedAscending)
  {
    v11 = 4;
  }

  else
  {
    v11 = 1;
  }

  [v3 setTextAlignment:v11];
  [v3 setNumberOfLines:2];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];

  return v3;
}

double getChickletSize()
{
  v0 = [MEMORY[0x1E69CD9E8] _activityImageForActionRepresentationImage:0];
  [v0 size];
  v2 = v1;

  return v2;
}

void sub_1B9E79AD0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

id _SFPersonLabelFont()
{
  v0 = [MEMORY[0x1E69DC938] currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1 == 6)
  {
    v2 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDD28] weight:*MEMORY[0x1E69DB970]];
  }

  else
  {
    v3 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD10]];
    v2 = [MEMORY[0x1E69DB878] fontWithDescriptor:v3 size:0.0];
  }

  return v2;
}

uint64_t _SFPersonCollectionViewMaximumSizeCategory(void *a1)
{
  v1 = a1;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___SFPersonCollectionViewMaximumSizeCategory_block_invoke;
  block[3] = &unk_1E7EE3720;
  v8 = v1;
  v2 = _SFPersonCollectionViewMaximumSizeCategory_onceToken;
  v3 = v1;
  if (v2 != -1)
  {
    dispatch_once(&_SFPersonCollectionViewMaximumSizeCategory_onceToken, block);
  }

  v4 = _SFPersonCollectionViewMaximumSizeCategory_maxCategory;
  v5 = _SFPersonCollectionViewMaximumSizeCategory_maxCategory;

  return v4;
}

void OUTLINED_FUNCTION_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_1B9E7DC78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B9E7E114(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id SFFontForTextStyleWithAdditionalSymbolicTraitsOfSize(void *a1, int a2, double a3)
{
  v5 = MEMORY[0x1E69DD1B8];
  v6 = *MEMORY[0x1E69DDC78];
  v7 = a1;
  v8 = [v5 traitCollectionWithPreferredContentSizeCategory:v6];
  v9 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:v7 compatibleWithTraitCollection:v8];

  v10 = [v9 fontDescriptorWithSymbolicTraits:{objc_msgSend(v9, "symbolicTraits") | a2}];

  v11 = [MEMORY[0x1E69DB878] fontWithDescriptor:v10 size:a3];

  return v11;
}

id SFVisualEffectViewWrapperForView(void *a1, void *a2)
{
  v23[4] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69DD298];
  v4 = a2;
  v5 = a1;
  v6 = [[v3 alloc] initWithEffect:v4];

  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = [v6 contentView];
  [v7 addSubview:v5];

  v18 = MEMORY[0x1E696ACD8];
  v22 = [v6 leftAnchor];
  v21 = [v5 leftAnchor];
  v20 = [v22 constraintEqualToAnchor:v21];
  v23[0] = v20;
  v19 = [v6 topAnchor];
  v8 = [v5 topAnchor];
  v9 = [v19 constraintEqualToAnchor:v8];
  v23[1] = v9;
  v10 = [v6 rightAnchor];
  v11 = [v5 rightAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];
  v23[2] = v12;
  v13 = [v6 bottomAnchor];
  v14 = [v5 bottomAnchor];

  v15 = [v13 constraintEqualToAnchor:v14];
  v23[3] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:4];
  [v18 activateConstraints:v16];

  return v6;
}

id SFImageStackFromImages(void *a1, CGFloat a2)
{
  v3 = a1;
  v4 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v4 scale];
  v6 = v5;

  v7 = [v3 count];
  v8 = v7;
  if (v7 >= 3)
  {
    v9 = 3;
  }

  else
  {
    v9 = v7;
  }

  v10 = a2 - (5 * v9);
  v11 = 2;
  if (v9 > 2)
  {
    v11 = v9;
  }

  v12 = [objc_alloc(getPUStackViewClass[0]()) initWithFrame:{0.0, 15.0, v10, (5 * v11 - 10) + a2}];
  [v12 setStyle:0];
  v13 = objc_alloc_init(getPUPhotoDecorationClass[0]());
  v14 = [MEMORY[0x1E69DC888] whiteColor];
  [v13 setBorderColor:v14];

  [v13 setBorderWidth:1.0 / v6];
  v15 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.0];
  [v13 setForegroundColor:v15];

  [v12 setPhotoDecoration:v13];
  [v12 setStackSize:{v10 + 1.0 / v6 * -2.0, v10 + 1.0 / v6 * -2.0}];
  [v12 setStackPerspectiveOffset:{0.0, -10.0}];
  [v12 setStackPerspectiveInsets:{5.0, 5.0, 5.0, 5.0}];
  [v12 setNumberOfVisibleItems:v9];
  if (v8)
  {
    v16 = 0;
    do
    {
      v17 = [v3 objectAtIndexedSubscript:v16];
      [v12 setImage:v17 forItemAtIndex:v16];
      [v17 size];
      [v12 setImageSize:v16 forItemAtIndex:?];

      ++v16;
    }

    while (v9 != v16);
  }

  v22.width = a2 - (5 * v9);
  v22.height = a2;
  UIGraphicsBeginImageContextWithOptions(v22, 0, v6);
  v18 = [v12 layer];
  [v18 renderInContext:UIGraphicsGetCurrentContext()];

  v19 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v19;
}

id SFScaleAndRotateImage(void *a1, double a2)
{
  v3 = a1;
  v4 = [v3 imageOrientation];
  v5 = [v3 CGImage];
  Width = CGImageGetWidth(v5);
  Height = CGImageGetHeight(v5);
  v8 = Height;
  v9 = Width <= a2 && v8 <= a2;
  v10 = Height;
  v11 = Width;
  if (!v9)
  {
    v12 = Width / v8;
    v13 = 0;
    v14 = 0;
    if (Width / v8 <= 1.0)
    {
      v17 = Width;
      v18 = a2;
      v11 = v12 * CGRectGetHeight(*&v13);
      v10 = a2;
    }

    else
    {
      v15 = a2;
      v16 = Height;
      v11 = a2;
      v10 = CGRectGetWidth(*&v13) / v12;
    }
  }

  v43.origin.x = 0.0;
  v43.origin.y = 0.0;
  v43.size.width = v11;
  v43.size.height = v10;
  v19 = CGRectGetWidth(v43) / Width;
  v36 = *(MEMORY[0x1E695EFD0] + 16);
  v37 = *MEMORY[0x1E695EFD0];
  *&v40.a = *MEMORY[0x1E695EFD0];
  *&v40.c = v36;
  v35 = *(MEMORY[0x1E695EFD0] + 32);
  *&v40.tx = v35;
  v44.origin.x = 0.0;
  v44.origin.y = 0.0;
  v44.size.width = v11;
  v44.size.height = v10;
  v20 = CGRectGetHeight(v44);
  if (v4 > 3)
  {
    if (v4 <= 5)
    {
      if (v4 == 4)
      {
        CGAffineTransformMakeTranslation(&v40, Width, 0.0);
        v38 = v40;
        v21 = -1.0;
        v22 = 1.0;
      }

      else
      {
        CGAffineTransformMakeTranslation(&v40, 0.0, v8);
        v38 = v40;
        v21 = 1.0;
        v22 = -1.0;
      }

      CGAffineTransformScale(&transform, &v38, v21, v22);
      goto LABEL_24;
    }

    if (v4 != 6)
    {
      if (v4 == 7)
      {
        v46.origin.x = 0.0;
        v46.origin.y = 0.0;
        v46.size.width = v11;
        v46.size.height = v10;
        v10 = CGRectGetWidth(v46);
        CGAffineTransformMakeScale(&v40, -1.0, 1.0);
        goto LABEL_19;
      }

LABEL_21:
      *&v40.a = v37;
      *&v40.c = v36;
      v24 = v35;
LABEL_25:
      *&v40.tx = v24;
      goto LABEL_30;
    }

    v47.origin.x = 0.0;
    v47.origin.y = 0.0;
    v47.size.width = v11;
    v47.size.height = v10;
    v10 = CGRectGetWidth(v47);
    CGAffineTransformMakeTranslation(&v40, v8, Width);
    v38 = v40;
    CGAffineTransformScale(&transform, &v38, -1.0, 1.0);
    v25 = *&transform.tx;
    v40 = transform;
    *&v38.a = *&transform.a;
    *&v38.c = *&transform.c;
LABEL_28:
    *&v38.tx = v25;
    v23 = 4.71238898;
    goto LABEL_29;
  }

  if (v4 == 1)
  {
    CGAffineTransformMakeTranslation(&v40, Width, v8);
    v38 = v40;
    CGAffineTransformRotate(&transform, &v38, 3.14159265);
LABEL_24:
    *&v40.a = *&transform.a;
    *&v40.c = *&transform.c;
    v24 = *&transform.tx;
    goto LABEL_25;
  }

  if (v4 == 2)
  {
    v48.origin.x = 0.0;
    v48.origin.y = 0.0;
    v48.size.width = v11;
    v48.size.height = v10;
    v10 = CGRectGetWidth(v48);
    CGAffineTransformMakeTranslation(&v40, 0.0, Width);
    *&v38.a = *&v40.a;
    *&v38.c = *&v40.c;
    v25 = *&v40.tx;
    goto LABEL_28;
  }

  if (v4 != 3)
  {
    goto LABEL_21;
  }

  v45.origin.x = 0.0;
  v45.origin.y = 0.0;
  v45.size.width = v11;
  v45.size.height = v10;
  v10 = CGRectGetWidth(v45);
  CGAffineTransformMakeTranslation(&v40, v8, 0.0);
LABEL_19:
  v38 = v40;
  v23 = 1.57079633;
LABEL_29:
  CGAffineTransformRotate(&transform, &v38, v23);
  v40 = transform;
  v11 = v20;
LABEL_30:
  if (v19 == 1.0 && (transform = v40, CGAffineTransformIsIdentity(&transform)) || (v11 == *MEMORY[0x1E695F060] ? (v26 = v10 == *(MEMORY[0x1E695F060] + 8)) : (v26 = 0), v26))
  {
    v32 = v3;
  }

  else
  {
    v42.width = v11;
    v42.height = v10;
    UIGraphicsBeginImageContext(v42);
    CurrentContext = UIGraphicsGetCurrentContext();
    v28 = CurrentContext;
    if ((v4 & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      CGContextScaleCTM(CurrentContext, -v19, v19);
      v29 = 0.0;
      v30 = v28;
      v31 = -v8;
    }

    else
    {
      CGContextScaleCTM(CurrentContext, v19, -v19);
      v31 = 0.0;
      v30 = v28;
      v29 = -v8;
    }

    CGContextTranslateCTM(v30, v31, v29);
    transform = v40;
    CGContextConcatCTM(v28, &transform);
    v33 = UIGraphicsGetCurrentContext();
    v49.origin.x = 0.0;
    v49.origin.y = 0.0;
    v49.size.width = Width;
    v49.size.height = v8;
    CGContextDrawImage(v33, v49, v5);
    v32 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
  }

  return v32;
}

double SFRoundToScreen(double a1)
{
  v2 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v2 scale];
  v4 = round(v3 * a1);
  v5 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v5 scale];
  v7 = v4 / v6;

  return v7;
}

id activityImageForCurrentTraitCollectionWithName(void *a1)
{
  v15[2] = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E69DCAB8];
  v2 = MEMORY[0x1E696AAE8];
  v3 = a1;
  v4 = [v2 bundleWithIdentifier:@"com.apple.Sharing"];
  v5 = MEMORY[0x1E69DD1B8];
  v6 = [MEMORY[0x1E69DCEB0] mainScreen];
  v7 = [v6 traitCollection];
  v15[0] = v7;
  v8 = MEMORY[0x1E69DD1B8];
  v9 = [MEMORY[0x1E69DC938] currentDevice];
  v10 = [v8 traitCollectionWithUserInterfaceIdiom:{objc_msgSend(v9, "userInterfaceIdiom")}];
  v15[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
  v12 = [v5 traitCollectionWithTraitsFromCollections:v11];
  v13 = [v1 imageNamed:v3 inBundle:v4 compatibleWithTraitCollection:v12];

  return v13;
}

id SFDeviceImageFromDeviceModel(CGFloat a1, CGFloat a2)
{
  v4 = SFAirDropModelImageNameFromModelString();
  v5 = SFDeviceImageFromImageName(v4, a1, a2);

  return v5;
}

id SFDeviceImageFromImageName(void *a1, CGFloat a2, CGFloat a3)
{
  v5 = MEMORY[0x1E69DCAB8];
  v6 = MEMORY[0x1E696AAE8];
  v7 = a1;
  v8 = [v6 bundleForClass:objc_opt_class()];
  v9 = [v5 imageNamed:v7 inBundle:v8];

  [v9 size];
  [v9 scale];
  UIRectCenteredAboutPointScale();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v18 scale];
  v20 = v19;
  v29.width = a2;
  v29.height = a3;
  UIGraphicsBeginImageContextWithOptions(v29, 0, v20);

  CurrentContext = UIGraphicsGetCurrentContext();
  v27.b = 0.0;
  v27.c = 0.0;
  v27.a = 1.0;
  *&v27.d = xmmword_1B9EDEB60;
  v27.ty = a3;
  CGContextConcatCTM(CurrentContext, &v27);
  v22 = [MEMORY[0x1E69DC888] whiteColor];
  Components = CGColorGetComponents([v22 CGColor]);
  CGContextSetFillColor(CurrentContext, Components);

  v30.origin.x = 0.0;
  v30.origin.y = 0.0;
  v30.size.width = a2;
  v30.size.height = a3;
  CGContextFillEllipseInRect(CurrentContext, v30);
  v24 = [v9 CGImage];
  v31.origin.x = v11;
  v31.origin.y = v13;
  v31.size.width = v15;
  v31.size.height = v17;
  CGContextDrawImage(CurrentContext, v31, v24);
  v25 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v25;
}

double SFMathClampedMap(double a1, double a2, double a3, double a4, double a5)
{
  result = a4 + (a5 - a4) * ((a1 - a2) / (a3 - a2));
  if (result >= a5)
  {
    result = a5;
  }

  if (result < a4)
  {
    return a4;
  }

  return result;
}

double SFMathClamp(double result, double a2, double a3)
{
  if (result >= a3)
  {
    result = a3;
  }

  if (result < a2)
  {
    return a2;
  }

  return result;
}

double SFMathClampedProgress(double a1, double a2, double a3)
{
  result = fmin((a1 - a2) / (a3 - a2) + 0.0, 1.0);
  if (result < 0.0)
  {
    return 0.0;
  }

  return result;
}

double SFMathAddToValueWithRubberbanding(double a1, double a2, double a3, double a4, double a5, double a6)
{
  v6 = -a5;
  if (a1 >= a3)
  {
    v7 = a6;
  }

  else
  {
    v7 = v6;
  }

  if (a3 >= a1)
  {
    v8 = a3;
  }

  else
  {
    v8 = a1;
  }

  if (v8 > a4)
  {
    v8 = a4;
  }

  if (v7 != 0.0)
  {
    v8 = v8 + (-1.0 / ((a1 - v8) / v7 + -1.0) + -1.0) / 0.55 * v7;
  }

  v9 = v8 + a2;
  if (v9 >= a3)
  {
    v10 = a6;
  }

  else
  {
    v10 = v6;
  }

  if (v9 <= a3)
  {
    result = a3;
  }

  else
  {
    result = v9;
  }

  if (result > a4)
  {
    result = a4;
  }

  if (v10 != 0.0)
  {
    return result + (1.0 - 1.0 / ((v9 - result) / v10 * 0.55 + 1.0)) * v10;
  }

  return result;
}

double SFMathUnrubberband(double result, double a2, double a3, double a4, double a5)
{
  v5 = result;
  if (result >= a2)
  {
    v6 = a5;
  }

  else
  {
    v6 = -a4;
  }

  if (a2 >= result)
  {
    result = a2;
  }

  if (result > a3)
  {
    result = a3;
  }

  if (v6 != 0.0)
  {
    return result + (-1.0 / ((v5 - result) / v6 + -1.0) + -1.0) / 0.55 * v6;
  }

  return result;
}

double SFMathRubberband(double result, double a2, double a3, double a4, double a5)
{
  v5 = result;
  if (result >= a2)
  {
    v6 = a5;
  }

  else
  {
    v6 = -a4;
  }

  if (a2 >= result)
  {
    result = a2;
  }

  if (result > a3)
  {
    result = a3;
  }

  if (v6 != 0.0)
  {
    return result + (1.0 - 1.0 / ((v5 - result) / v6 * 0.55 + 1.0)) * v6;
  }

  return result;
}

double SFSpringConvertMassStiffnessDampingToDampingRatioResponse(double *a1, double *a2, double result, double a4, double a5)
{
  if (a1)
  {
    v5 = sqrt(result * a4);
    *a1 = a5 / (v5 + v5);
  }

  if (a2)
  {
    result = 6.28318531 / sqrt(a4 / result);
    *a2 = result;
  }

  return result;
}

double SFSpringConvertDampingRatioResponseToStiffnessDamping(double *a1, double *a2, double result, double a4)
{
  v4 = 6.28318531 / a4 * (6.28318531 / a4);
  if (a1)
  {
    *a1 = v4;
  }

  if (a2)
  {
    v5 = sqrt(v4);
    result = (v5 + v5) * result;
    *a2 = result;
  }

  return result;
}

double SFSpringConvertStiffnessDampingToDampingRatioResponse(double *a1, double *a2, double a3, double a4)
{
  result = sqrt(a3);
  if (a1)
  {
    *a1 = a4 / (result + result);
  }

  if (a2)
  {
    result = 6.28318531 / result;
    *a2 = result;
  }

  return result;
}

double SFSpringConvertMassStiffnessDampingToStiffnessDamping(double *a1, double *a2, double result, double a4, double a5)
{
  v5 = sqrt(a4 / result);
  v6 = 6.28318531 / (6.28318531 / v5) * (6.28318531 / (6.28318531 / v5));
  if (a1)
  {
    *a1 = v6;
  }

  if (a2)
  {
    v7 = sqrt(result * a4);
    v8 = sqrt(v6);
    result = a5 / (v7 + v7) * (v8 + v8);
    *a2 = result;
  }

  return result;
}

double SFScreenScale()
{
  v0 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v0 scale];
  v2 = v1;

  return v2;
}

CGImageSource *SFCreateThumbnailImage(void *a1, double a2, double a3, double a4)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v19 = *MEMORY[0x1E696E0A8];
  v20[0] = MEMORY[0x1E695E110];
  v7 = MEMORY[0x1E695DF20];
  v8 = a1;
  v9 = [v7 dictionaryWithObjects:v20 forKeys:&v19 count:1];
  v10 = CGImageSourceCreateWithURL(v8, v9);

  if (v10)
  {
    if (a2 >= a3)
    {
      v11 = a2;
    }

    else
    {
      v11 = a3;
    }

    v12 = *MEMORY[0x1E696E0B8];
    v17[0] = *MEMORY[0x1E696DFE8];
    v17[1] = v12;
    v18[0] = MEMORY[0x1E695E118];
    v18[1] = MEMORY[0x1E695E118];
    v18[2] = MEMORY[0x1E695E118];
    v13 = *MEMORY[0x1E696E100];
    v17[2] = *MEMORY[0x1E696E000];
    v17[3] = v13;
    v14 = [MEMORY[0x1E696AD98] numberWithDouble:v11 * a4];
    v18[3] = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:4];

    v10 = [MEMORY[0x1E69DCAB8] imageWithCGImage:{CGImageSourceCreateThumbnailAtIndex(v10, 0, v15)}];
  }

  return v10;
}

void SFGenerateWebPreviewImage(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    if (![v3 isFileURL])
    {
      v7 = objc_alloc_init(getLPMetadataProviderClass[0]());
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __SFGenerateWebPreviewImage_block_invoke;
      v8[3] = &unk_1E7EE44A0;
      v9 = v3;
      v10 = v4;
      [v7 startFetchingMetadataForURL:v9 completionHandler:v8];

      goto LABEL_10;
    }

    v5 = sharing_ui_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v6 = "Unable to generate web preview for fileURL";
LABEL_7:
      _os_log_impl(&dword_1B9E4B000, v5, OS_LOG_TYPE_DEFAULT, v6, buf, 2u);
    }
  }

  else
  {
    v5 = sharing_ui_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v6 = "Unable to generate web preview for nil URL";
      goto LABEL_7;
    }
  }

  (*(v4 + 2))(v4, 0);
LABEL_10:
}

void __SFGenerateWebPreviewImage_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v8 = sharing_ui_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      *buf = 138412546;
      v14 = v9;
      v15 = 2112;
      v16 = v7;
      _os_log_impl(&dword_1B9E4B000, v8, OS_LOG_TYPE_DEFAULT, "Unable to fetch metadata for URL %@: %@", buf, 0x16u);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __SFGenerateWebPreviewImage_block_invoke_14;
    v10[3] = &unk_1E7EE4478;
    v11 = v5;
    v12 = *(a1 + 40);
    [v11 _loadAsynchronousFieldsWithUpdateHandler:v10];
  }
}

void __SFGenerateWebPreviewImage_block_invoke_14(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) image];
    v4 = [v3 platformImage];
    v5 = v4;
    if (v4)
    {
      v7 = v4;
    }

    else
    {
      v6 = [*(a1 + 32) icon];
      v7 = [v6 platformImage];
    }

    (*(*(a1 + 40) + 16))();
  }
}

Class initPUStackView()
{
  if (PhotosUIPrivateLibrary_sOnce != -1)
  {
    initPUStackView_cold_1();
  }

  result = objc_getClass("PUStackView");
  classPUStackView = result;
  getPUStackViewClass[0] = PUStackViewFunction;
  return result;
}

void *__PhotosUIPrivateLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/PhotosUIPrivate.framework/PhotosUIPrivate", 2);
  PhotosUIPrivateLibrary_sLib = result;
  return result;
}

Class initPUPhotoDecoration()
{
  if (PhotosUIPrivateLibrary_sOnce != -1)
  {
    initPUStackView_cold_1();
  }

  result = objc_getClass("PUPhotoDecoration");
  classPUPhotoDecoration = result;
  getPUPhotoDecorationClass[0] = PUPhotoDecorationFunction;
  return result;
}

Class initLPMetadataProvider()
{
  if (LinkPresentationLibrary_sOnce_0 != -1)
  {
    initLPMetadataProvider_cold_1();
  }

  result = objc_getClass("LPMetadataProvider");
  classLPMetadataProvider = result;
  getLPMetadataProviderClass[0] = LPMetadataProviderFunction;
  return result;
}

void *__LinkPresentationLibrary_block_invoke_0()
{
  result = dlopen("/System/Library/PrivateFrameworks/LinkPresentation.framework/LinkPresentation", 2);
  LinkPresentationLibrary_sLib_0 = result;
  return result;
}

void sub_1B9E800D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

double avatarImageScale()
{
  v0 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v0 scale];
  v2 = v1;

  return v2;
}

void sub_1B9E82800(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_0_4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

Class initMTMaterialView()
{
  if (MaterialKitLibrary_sOnce != -1)
  {
    initMTMaterialView_cold_1();
  }

  result = objc_getClass("MTMaterialView");
  classMTMaterialView = result;
  getMTMaterialViewClass = MTMaterialViewFunction;
  return result;
}

void *__MaterialKitLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/MaterialKit.framework/MaterialKit", 2);
  MaterialKitLibrary_sLib = result;
  return result;
}

uint64_t IntentsLibraryCore()
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = 0;
  v3 = &v2;
  v4 = 0x2020000000;
  v0 = IntentsLibraryCore_frameworkLibrary;
  v5 = IntentsLibraryCore_frameworkLibrary;
  if (!IntentsLibraryCore_frameworkLibrary)
  {
    v6 = xmmword_1E7EE4640;
    v7 = *off_1E7EE4650;
    v8 = 0;
    v3[3] = _sl_dlopen();
    IntentsLibraryCore_frameworkLibrary = v3[3];
    v0 = v3[3];
  }

  _Block_object_dispose(&v2, 8);
  return v0;
}

void sub_1B9E89640(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __IntentsLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  IntentsLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t IntentsLibrary()
{
  v1 = 0;
  result = IntentsLibraryCore();
  if (!result)
  {
    IntentsLibrary_cold_1(&v1);
  }

  return result;
}

id getINImageClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getINImageClass_softClass;
  v7 = getINImageClass_softClass;
  if (!getINImageClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getINImageClass_block_invoke;
    v3[3] = &unk_1E7EE4248;
    v3[4] = &v4;
    __getINImageClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B9E8980C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getINImageClass_block_invoke(uint64_t a1)
{
  IntentsLibrary();
  result = objc_getClass("INImage");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getINImageClass_block_invoke_cold_1();
  }

  getINImageClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getINImageServiceConnectionClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getINImageServiceConnectionClass_softClass;
  v7 = getINImageServiceConnectionClass_softClass;
  if (!getINImageServiceConnectionClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getINImageServiceConnectionClass_block_invoke;
    v3[3] = &unk_1E7EE4248;
    v3[4] = &v4;
    __getINImageServiceConnectionClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B9E89944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getINImageServiceConnectionClass_block_invoke(uint64_t a1)
{
  IntentsLibrary();
  result = objc_getClass("INImageServiceConnection");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getINImageServiceConnectionClass_block_invoke_cold_1();
  }

  getINImageServiceConnectionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getINImageDefaultScaledSizeSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getINImageDefaultScaledSizeSymbolLoc_ptr;
  v6 = getINImageDefaultScaledSizeSymbolLoc_ptr;
  if (!getINImageDefaultScaledSizeSymbolLoc_ptr)
  {
    v1 = IntentsLibrary();
    v4[3] = dlsym(v1, "INImageDefaultScaledSize");
    getINImageDefaultScaledSizeSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1B9E89A88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getINImageDefaultScaledSizeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = IntentsLibrary();
  result = dlsym(v2, "INImageDefaultScaledSize");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getINImageDefaultScaledSizeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

double getINImageDefaultScaledSize()
{
  INImageDefaultScaledSizeSymbolLoc = getINImageDefaultScaledSizeSymbolLoc();
  if (!INImageDefaultScaledSizeSymbolLoc)
  {
    getINImageDefaultScaledSize_cold_1();
  }

  return *INImageDefaultScaledSizeSymbolLoc;
}

uint64_t ContactsUILibraryCore()
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = 0;
  v3 = &v2;
  v4 = 0x2020000000;
  v0 = ContactsUILibraryCore_frameworkLibrary;
  v5 = ContactsUILibraryCore_frameworkLibrary;
  if (!ContactsUILibraryCore_frameworkLibrary)
  {
    v6 = xmmword_1E7EE4690;
    v7 = *off_1E7EE46A0;
    v8 = 0;
    v3[3] = _sl_dlopen();
    ContactsUILibraryCore_frameworkLibrary = v3[3];
    v0 = v3[3];
  }

  _Block_object_dispose(&v2, 8);
  return v0;
}

void sub_1B9E89C28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __ContactsUILibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  ContactsUILibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t ContactsUILibrary()
{
  v1 = 0;
  result = ContactsUILibraryCore();
  if (!result)
  {
    ContactsUILibrary_cold_1(&v1);
  }

  return result;
}

id getCNAvatarImageRendererClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCNAvatarImageRendererClass_softClass;
  v7 = getCNAvatarImageRendererClass_softClass;
  if (!getCNAvatarImageRendererClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getCNAvatarImageRendererClass_block_invoke;
    v3[3] = &unk_1E7EE4248;
    v3[4] = &v4;
    __getCNAvatarImageRendererClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B9E89DF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCNAvatarImageRendererClass_block_invoke(uint64_t a1)
{
  ContactsUILibrary();
  result = objc_getClass("CNAvatarImageRenderer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCNAvatarImageRendererClass_block_invoke_cold_1();
  }

  getCNAvatarImageRendererClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getCNAvatarImageRenderingScopeClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCNAvatarImageRenderingScopeClass_softClass;
  v7 = getCNAvatarImageRenderingScopeClass_softClass;
  if (!getCNAvatarImageRenderingScopeClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getCNAvatarImageRenderingScopeClass_block_invoke;
    v3[3] = &unk_1E7EE4248;
    v3[4] = &v4;
    __getCNAvatarImageRenderingScopeClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B9E89F2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCNAvatarImageRenderingScopeClass_block_invoke(uint64_t a1)
{
  ContactsUILibrary();
  result = objc_getClass("CNAvatarImageRenderingScope");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCNAvatarImageRenderingScopeClass_block_invoke_cold_1();
  }

  getCNAvatarImageRenderingScopeClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getCNAvatarImageRendererSettingsClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCNAvatarImageRendererSettingsClass_softClass;
  v7 = getCNAvatarImageRendererSettingsClass_softClass;
  if (!getCNAvatarImageRendererSettingsClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getCNAvatarImageRendererSettingsClass_block_invoke;
    v3[3] = &unk_1E7EE4248;
    v3[4] = &v4;
    __getCNAvatarImageRendererSettingsClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B9E8A064(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCNAvatarImageRendererSettingsClass_block_invoke(uint64_t a1)
{
  ContactsUILibrary();
  result = objc_getClass("CNAvatarImageRendererSettings");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCNAvatarImageRendererSettingsClass_block_invoke_cold_1();
  }

  getCNAvatarImageRendererSettingsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1B9E8A1A8(uint64_t a1, uint64_t a2)
{
  v11 = a1;
  v13 = 0;
  v12 = 0;
  v10 = *(a2 + 16);
  v14 = v10;
  v8 = *(v10 - 8);
  v9 = v10 - 8;
  v5 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v6 = &v5 - v5;
  v13 = v3;
  v12 = v2;
  (*(v8 + 16))();
  (*(v8 + 40))(v7, v6, v10);
  return (*(v8 + 8))(v11, v10);
}

uint64_t sub_1B9E8A300(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = (v3 + *(a3 + 28));
  *v4 = result;
  v4[1] = a2;
  return result;
}

uint64_t sub_1B9E8A360@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v20 = a5;
  v23 = a1;
  v18 = a2;
  v19 = a3;
  v25 = a4;
  v30 = 0;
  v29 = 0;
  v27 = 0;
  v28 = 0;
  v31 = a4;
  v21 = *(a4 - 8);
  v22 = a4 - 8;
  v16 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](a1);
  v17 = &v16 - v16;
  v26 = type metadata accessor for TimelineEntry();
  v5 = MEMORY[0x1EEE9AC00](v17);
  v24 = &v16 - v6;
  v30 = &v16 - v6;
  v29 = v7;
  v27 = v18;
  v28 = v19;
  (*(v21 + 16))(v5);
  (*(v21 + 32))(v24, v17, v25);
  v8 = v19;
  v9 = v20;
  v10 = v25;
  v11 = v26;
  v12 = v24;
  v13 = (v24 + *(v26 + 28));
  *v13 = v18;
  v13[1] = v8;
  v14 = sub_1B9E8A578(v12, v9, v10, v11);
  (*(v21 + 8))(v23, v25, v14);
  result = v24;
  sub_1B9E8A5F4(v24, v25);
  return result;
}

__n128 sub_1B9E8A578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(*(a3 - 8) + 16))();
  result = *(a1 + *(a4 + 28));
  *(a2 + *(a4 + 28)) = result;
  return result;
}

uint64_t SFShockwaveEffectState.isLogicallyComplete.getter()
{
  v10 = 0;
  v7 = sub_1B9ED890C();
  v5 = *(v7 - 8);
  v6 = v7 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v8 = &v2 - v4;
  v10 = v0;
  (*(v5 + 16))();
  v9 = (*(v5 + 88))(v8, v7);
  if (v9 == *MEMORY[0x1E69CDD10] || v9 == *MEMORY[0x1E69CDD08] || v9 == *MEMORY[0x1E69CDCF8] || v9 == *MEMORY[0x1E69CDD18])
  {
    v3 = 1;
  }

  else
  {
    (*(v5 + 8))(v8, v7);
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t SFShockwaveEffectState.isRemoved.getter()
{
  v8 = 0;
  v6 = sub_1B9ED890C();
  v4 = *(v6 - 8);
  v5 = v6 - 8;
  v3 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v7 = &v2 - v3;
  v8 = v0;
  (*(v4 + 16))();
  if ((*(v4 + 88))(v7, v6) == *MEMORY[0x1E69CDD18])
  {
    HIDWORD(v2) = 1;
  }

  else
  {
    (*(v4 + 8))(v7, v6);
    HIDWORD(v2) = 0;
  }

  return BYTE4(v2) & 1;
}

uint64_t SFShockwaveEffectState.assetState.getter()
{
  v20 = 0;
  v17 = sub_1B9ED890C();
  v15 = *(v17 - 8);
  v16 = v17 - 8;
  v12 = *(v15 + 64);
  v11 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v13 = v5 - v11;
  v14 = v11;
  MEMORY[0x1EEE9AC00]();
  v18 = v5 - v14;
  v20 = v0;
  (*(v15 + 16))();
  v19 = (*(v15 + 88))(v18, v17);
  if (v19 == *MEMORY[0x1E69CDD00] || v19 == *MEMORY[0x1E69CDD10] || v19 == *MEMORY[0x1E69CDD20] || v19 == *MEMORY[0x1E69CDD08] || v19 == *MEMORY[0x1E69CDCF8] || v19 == *MEMORY[0x1E69CDD18])
  {
    v9 = sub_1B9ED8B1C();
    v10 = v1;
  }

  else
  {
    v2 = (*(v15 + 104))(v13, *MEMORY[0x1E69CDCF8], v17);
    v7 = SFShockwaveEffectState.assetState.getter(v2);
    v8 = v3;
    v6 = *(v15 + 8);
    v5[1] = v15 + 8;
    v6(v13, v17);
    v6(v18, v17);
    v9 = v7;
    v10 = v8;
  }

  return v9;
}

uint64_t sub_1B9E8ACC0()
{
  v33 = &v38;
  v38 = 0;
  v28 = sub_1B9ED890C();
  v10 = *(v28 - 8);
  v11 = v28 - 8;
  v9 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v28);
  v29 = &v9 - v9;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5F90);
  v31 = sub_1B9ED914C();
  v27 = v0;
  v1 = *MEMORY[0x1E69CDD00];
  v25 = *(v10 + 104);
  v24 = v10 + 104;
  v25(v29, v1, v28);
  v12 = &v37;
  v37 = 1000;
  v18 = sub_1B9E98CD4();
  v17 = MEMORY[0x1E69E6530];
  v13 = sub_1B9ED922C();
  sub_1B9E8A360(v29, v13, v2, v28, v27);
  v23 = *(*(v32 - 8) + 72);
  v14 = v23;
  v25(v29, *MEMORY[0x1E69CDD20], v28);
  v36 = 480;
  v15 = sub_1B9ED922C();
  sub_1B9E8A360(v29, v15, v3, v28, v27 + v14);
  v16 = 2;
  v19 = 2 * v23;
  v25(v29, *MEMORY[0x1E69CDD08], v28);
  v35 = v16;
  v20 = sub_1B9ED925C();
  sub_1B9E8A360(v29, v20, v4, v28, v27 + v19);
  v21 = 3 * v23;
  v25(v29, *MEMORY[0x1E69CDCF8], v28);
  v22 = sub_1B9ED924C();
  sub_1B9E8A360(v29, v22, v5, v28, v27 + v21);
  v26 = 4 * v23;
  v25(v29, *MEMORY[0x1E69CDD18], v28);
  v30 = sub_1B9E8A33C();
  sub_1B9E8A360(v29, v30, v6, v28, v27 + v26);
  v7 = v31;
  sub_1B9E8B398();
  v34 = v7;

  v38 = v34;
  sub_1B9E9895C();
  return v34;
}

uint64_t sub_1B9E8B038()
{
  v33 = &v38;
  v38 = 0;
  v28 = sub_1B9ED890C();
  v10 = *(v28 - 8);
  v11 = v28 - 8;
  v9 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v28);
  v29 = &v9 - v9;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5F90);
  v31 = sub_1B9ED914C();
  v27 = v0;
  v1 = *MEMORY[0x1E69CDD00];
  v25 = *(v10 + 104);
  v24 = v10 + 104;
  v25(v29, v1, v28);
  v12 = &v37;
  v37 = 50;
  v18 = sub_1B9E98CD4();
  v17 = MEMORY[0x1E69E6530];
  v13 = sub_1B9ED922C();
  sub_1B9E8A360(v29, v13, v2, v28, v27);
  v23 = *(*(v32 - 8) + 72);
  v14 = v23;
  v25(v29, *MEMORY[0x1E69CDD20], v28);
  v36 = 480;
  v15 = sub_1B9ED922C();
  sub_1B9E8A360(v29, v15, v3, v28, v27 + v14);
  v16 = 2;
  v19 = 2 * v23;
  v25(v29, *MEMORY[0x1E69CDD08], v28);
  v35 = v16;
  v20 = sub_1B9ED925C();
  sub_1B9E8A360(v29, v20, v4, v28, v27 + v19);
  v21 = 3 * v23;
  v25(v29, *MEMORY[0x1E69CDCF8], v28);
  v22 = sub_1B9ED924C();
  sub_1B9E8A360(v29, v22, v5, v28, v27 + v21);
  v26 = 4 * v23;
  v25(v29, *MEMORY[0x1E69CDD18], v28);
  v30 = sub_1B9E8A33C();
  sub_1B9E8A360(v29, v30, v6, v28, v27 + v26);
  v7 = v31;
  sub_1B9E8B398();
  v34 = v7;

  v38 = v34;
  sub_1B9E9895C();
  return v34;
}

uint64_t sub_1B9E8B404()
{
  result = *v0;
  sub_1B9E8B3DC();
  return result;
}

uint64_t sub_1B9E8B420@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a2;
  v9 = a1;
  v11 = 0;
  v10 = sub_1B9ED890C();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v4 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v6 = &v4 - v4;
  v11 = v2;
  (*(v7 + 16))();
  sub_1B9E93528(v6, v10, v5);
  return (*(v7 + 8))(v9, v10);
}

uint64_t sub_1B9E8B51C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v8 = a2;
  v3 = a1;
  v10 = sub_1B9ED890C();
  v6 = *(v10 - 8);
  v7 = v10 - 8;
  v4 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = &v3 - v4;
  v5 = *MEMORY[0x1EEE9AC00](v3);

  v12 = v5;
  v11 = v5;
  sub_1B9E8B6F0();
  (*(v6 + 32))(v8, v9, v10);
}

uint64_t sub_1B9E8B610(uint64_t a1, uint64_t *a2)
{
  v4 = a1;
  v7 = a2;
  v2 = sub_1B9ED890C();
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v8 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v9 = *v7;

  v11 = v9;
  v10 = v9;
  sub_1B9E8B784(v8);
}

uint64_t sub_1B9E8B6F0()
{

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1B9ED872C();
}

uint64_t sub_1B9E8B784(uint64_t a1)
{
  v8 = a1;
  v11 = 0;
  v10 = 0;
  v9 = sub_1B9ED890C();
  v6 = *(v9 - 8);
  v7 = v9 - 8;
  v4[0] = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x1EEE9AC00](v4[2]);
  v5 = v4 - v4[0];
  v11 = v2;
  v10 = v1;

  v4[3] = swift_getKeyPath();
  v4[4] = swift_getKeyPath();
  (*(v6 + 16))(v5, v8, v9);
  sub_1B9ED873C();
  return (*(v6 + 8))(v8, v9);
}

void (*sub_1B9E8B8D8(void *a1))(void (***a1)(void, void))
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v2;

  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = sub_1B9ED871C();
  return sub_1B9E8B9B8;
}

void sub_1B9E8B9B8(void (***a1)(void, void))
{
  v1 = *a1;
  v1[7](v1, 0);

  free(v1);
}

uint64_t sub_1B9E8BA94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v8 = a2;
  v3 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5D58);
  v6 = *(v10 - 8);
  v7 = v10 - 8;
  v4 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = &v3 - v4;
  v5 = *MEMORY[0x1EEE9AC00](v3);

  v12 = v5;
  v11 = v5;
  sub_1B9E8BC80();
  (*(v6 + 32))(v8, v9, v10);
}

uint64_t sub_1B9E8BB94(uint64_t a1, uint64_t *a2)
{
  v4 = a1;
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5D58);
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v8 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v9 = *v7;

  v11 = v9;
  v10 = v9;
  sub_1B9E8BCFC(v8);
}

uint64_t sub_1B9E8BC80()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5D50);
  sub_1B9ED86FC();
  return swift_endAccess();
}

uint64_t sub_1B9E8BCFC(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5D58);
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v4[0] = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v4[1] = v4 - v4[0];
  v11 = v2;
  v10 = v1;
  (*(v5 + 16))();
  v4[2] = &v9;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5D50);
  sub_1B9ED870C();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

void (*sub_1B9E8BE50(void *a1))(void **a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5D58);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5);
  v6[4] = __swift_coroFrameAllocStub(v5);
  sub_1B9E8BC80();
  return sub_1B9E8BF74;
}

void sub_1B9E8BF74(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    sub_1B9E8BCFC(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    sub_1B9E8BCFC(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

uint64_t sub_1B9E8C070@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR____TtC9SharingUI29ShockwaveAnimationCoordinator__state;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5D50);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t sub_1B9E8C110(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5D50);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR____TtC9SharingUI29ShockwaveAnimationCoordinator__state;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t sub_1B9E8C270()
{
  v2 = (v0 + OBJC_IVAR____TtC9SharingUI29ShockwaveAnimationCoordinator_animationTask);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_1B9E8C2D8(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC9SharingUI29ShockwaveAnimationCoordinator_animationTask);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t ShockwaveAnimationCoordinator.init()()
{
  v13 = 0;
  v6 = 0;
  v1 = sub_1B9ED890C();
  v7 = *(v1 - 8);
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v2 = v7;
  v9 = &v4 - v5;
  v13 = v0;
  *(v0 + OBJC_IVAR____TtC9SharingUI29ShockwaveAnimationCoordinator_animationTask) = 0;
  (*(v2 + 104))();
  v8 = v0 + OBJC_IVAR____TtC9SharingUI29ShockwaveAnimationCoordinator__state;
  v10 = &v12;
  swift_beginAccess();
  sub_1B9E8B420(v9, v8);
  swift_endAccess();
  return v11;
}

uint64_t sub_1B9E8C54C(uint64_t a1, uint64_t a2)
{
  v18 = a1;
  v17 = a2;
  v23 = MEMORY[0x1E69E85E0];
  v34 = &unk_1B9EDEC18;
  v39 = 0;
  v38 = 0;
  v37 = 0;
  v32 = 0;
  v28 = sub_1B9ED8FAC();
  v24 = *(v28 - 8);
  v25 = v28 - 8;
  v19 = v24;
  v20 = *(v24 + 64);
  v15 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v28);
  v27 = &v15 - v15;
  v16 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5D68) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v32);
  v33 = &v15 - v16;
  v39 = v3;
  v38 = v4;
  v37 = v2;
  v5 = sub_1B9ED8CDC();
  (*(*(v5 - 8) + 56))(v33, 1);
  v21 = 7;
  v31 = swift_allocObject();

  swift_weakInit();

  (*(v24 + 16))(v27, v17, v28);
  v30 = v36;
  sub_1B9E93684(v18, v36);
  sub_1B9ED8CBC();
  v22 = sub_1B9ED8CAC();
  v26 = (*(v19 + 80) + 40) & ~*(v19 + 80);
  v29 = (v26 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = swift_allocObject();
  v7 = v23;
  v8 = v24;
  v9 = v26;
  v10 = v27;
  v11 = v28;
  v12 = v31;
  v35 = v6;
  v6[2] = v22;
  v6[3] = v7;
  v6[4] = v12;
  (*(v8 + 32))(v6 + v9, v10, v11);
  sub_1B9E93790(v30, v35 + v29);

  v13 = sub_1B9E8E6AC(v32, v32, v33, v34, v35, MEMORY[0x1E69E7CA8] + 8);
  return sub_1B9E8C2D8(v13);
}

uint64_t sub_1B9E8C888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[19] = a6;
  v6[18] = a5;
  v6[17] = a4;
  v6[10] = v6;
  v6[11] = 0;
  v6[12] = 0;
  v6[13] = 0;
  v6[14] = 0;
  v6[8] = 0;
  v6[9] = 0;
  v7 = sub_1B9ED8FBC();
  v6[20] = v7;
  v6[21] = *(v7 - 8);
  v6[22] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5F90);
  v6[23] = v8;
  v6[24] = *(v8 - 8);
  v6[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5F60);
  v6[26] = swift_task_alloc();
  v9 = sub_1B9ED890C();
  v6[27] = v9;
  v6[28] = *(v9 - 8);
  v6[29] = swift_task_alloc();
  v6[30] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5F98);
  v6[31] = swift_task_alloc();
  v6[32] = swift_task_alloc();
  v10 = sub_1B9ED8FAC();
  v6[33] = v10;
  v6[34] = *(v10 - 8);
  v6[35] = swift_task_alloc();
  v6[36] = swift_task_alloc();
  v6[37] = swift_task_alloc();
  v6[38] = swift_task_alloc();
  v6[11] = a4 + 16;
  v6[12] = a5;
  v6[13] = a6;
  sub_1B9ED8CBC();
  v6[39] = sub_1B9ED8CAC();
  v16 = sub_1B9ED8C6C();
  v6[40] = v16;
  v6[41] = v11;

  return MEMORY[0x1EEE6DFA0](sub_1B9E8CC44, v16);
}

uint64_t sub_1B9E8CC44()
{
  *(v0 + 80) = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 336) = Strong;
  swift_endAccess();
  if (Strong)
  {
    v1 = *(v54 + 304);
    v2 = *(v54 + 272);
    v3 = *(v54 + 264);
    v51 = *(v54 + 152);
    v4 = *(v54 + 144);
    *(v54 + 112) = Strong;
    v5 = v2 + 16;
    v6 = *(v2 + 16);
    *(v54 + 344) = v6;
    *(v54 + 352) = v5 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v6(v1, v4, v3);
    v53 = v51[3];
    v52 = v51[4];
    __swift_project_boxed_opaque_existential_1(v51, v53);
    *(v54 + 120) = (*(v52 + 8))(v53);
    *(v54 + 360) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5FA0);
    sub_1B9E988D4();
    sub_1B9ED8D9C();
    while (1)
    {
      v48 = *(v54 + 256);
      v49 = *(v54 + 184);
      v47 = *(v54 + 192);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5FB0);
      sub_1B9ED8FDC();
      v50 = *(v47 + 48);
      if (v50(v48, 1, v49) == 1)
      {
        v45 = *(v54 + 248);
        v46 = *(v54 + 184);
        v42 = *(v54 + 152);
        sub_1B9E9895C();
        v44 = v42[3];
        v43 = v42[4];
        __swift_project_boxed_opaque_existential_1(v42, v44);
        *(v54 + 128) = (*(v43 + 8))(v44);
        sub_1B9E98988();
        sub_1B9ED8A4C();

        if (v50(v45, 1, v46) == 1)
        {
          v27 = *(v54 + 216);
          v28 = *(v54 + 208);
          v26 = *(v54 + 224);
          sub_1B9E98A10(*(v54 + 248));
          (*(v26 + 56))(v28, 1, 1, v27);
        }

        else
        {
          v22 = *(v54 + 248);
          v24 = *(v54 + 216);
          v25 = *(v54 + 208);
          v23 = *(v54 + 224);
          (*(v23 + 16))();
          sub_1B9E98B68(v22);
          (*(v23 + 56))(v25, 0, 1, v24);
        }

        v13 = (*(v54 + 224) + 48);
        v21 = *v13;
        if ((*v13)(*(v54 + 208), 1, *(v54 + 216)) == 1)
        {
          v20 = *(v54 + 216);
          v19 = *(v54 + 208);
          (*(*(v54 + 224) + 104))(*(v54 + 240), *MEMORY[0x1E69CDD18]);
          if (v21(v19, 1, v20) != 1)
          {
            sub_1B9E98AC0(*(v54 + 208));
          }
        }

        else
        {
          (*(*(v54 + 224) + 32))(*(v54 + 240), *(v54 + 208), *(v54 + 216));
        }

        v17 = *(v54 + 304);
        v18 = *(v54 + 264);
        v16 = *(v54 + 272);
        sub_1B9E8B784(*(v54 + 240));
        (*(v16 + 8))(v17, v18);

        goto LABEL_18;
      }

      sub_1B9E98BC4(*(v54 + 256), *(v54 + 200));
      sub_1B9ED8CFC();
      v36 = *(v54 + 344);
      v35 = *(v54 + 304);
      v39 = *(v54 + 296);
      v38 = *(v54 + 288);
      v7 = *(v54 + 264);
      v37 = *(v54 + 272);
      v8 = (*(v54 + 200) + *(*(v54 + 184) + 28));
      sub_1B9E8E588(v35, *v8, v8[1]);
      v36(v39, v35, v7);
      sub_1B9ED8F7C();
      sub_1B9E98C54();
      v41 = sub_1B9ED8A5C();
      v40 = *(v37 + 8);
      *(v54 + 368) = v40;
      *(v54 + 376) = (v37 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v40(v38, v7);
      v40(v39, v7);
      if (v41)
      {
        break;
      }

      sub_1B9E98B68(*(v54 + 200));
    }

    v33 = *(v54 + 344);
    v31 = *(v54 + 304);
    v30 = *(v54 + 280);
    v32 = *(v54 + 264);
    v29 = *(v54 + 232);
    (*(*(v54 + 224) + 16))();
    sub_1B9E8B784(v29);
    v33(v30, v31, v32);
    *(v54 + 40) = 0;
    *(v54 + 48) = 0;
    *(v54 + 56) = 1;
    v34 = sub_1B9E98518();
    sub_1B9E8E688();
    v9 = swift_task_alloc();
    *(v54 + 384) = v9;
    *v9 = *(v54 + 80);
    v9[1] = sub_1B9E8D798;
    v10 = *(v54 + 280);
    v11 = *(v54 + 176);
    v12 = *(v54 + 160);

    return MEMORY[0x1EEE6DA68](v10, v54 + 40, v11, v12, v34);
  }

  else
  {
LABEL_18:

    v14 = *(*(v54 + 80) + 8);

    return v14();
  }
}

uint64_t sub_1B9E8D798()
{
  v8 = *v1;
  v8[10] = *v1;
  v8[49] = v0;

  if (v0)
  {
    v2 = v8[40];
    v3 = sub_1B9E8E384;
  }

  else
  {
    v7 = v8[46];
    v5 = v8[35];
    v6 = v8[33];
    (*(v8[21] + 8))(v8[22], v8[20]);
    v7(v5, v6);
    v2 = v8[40];
    v3 = sub_1B9E8D968;
  }

  return MEMORY[0x1EEE6DFA0](v3, v2);
}

uint64_t sub_1B9E8D968()
{
  v1 = v0[25];
  v0[10] = v0;
  sub_1B9E98B68(v1);
  for (i = v0[49]; ; i = 0)
  {
    v28 = *(v49 + 256);
    v29 = *(v49 + 184);
    v27 = *(v49 + 192);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5FB0);
    sub_1B9ED8FDC();
    v48 = *(v27 + 48);
    if (v48(v28, 1, v29) == 1)
    {
      v46 = *(v49 + 248);
      v47 = *(v49 + 184);
      v43 = *(v49 + 152);
      sub_1B9E9895C();
      v45 = v43[3];
      v44 = v43[4];
      __swift_project_boxed_opaque_existential_1(v43, v45);
      *(v49 + 128) = (*(v44 + 8))(v45);
      sub_1B9E98988();
      sub_1B9ED8A4C();

      if (v48(v46, 1, v47) == 1)
      {
        v25 = *(v49 + 216);
        v26 = *(v49 + 208);
        v24 = *(v49 + 224);
        sub_1B9E98A10(*(v49 + 248));
        (*(v24 + 56))(v26, 1, 1, v25);
      }

      else
      {
        v20 = *(v49 + 248);
        v22 = *(v49 + 216);
        v23 = *(v49 + 208);
        v21 = *(v49 + 224);
        (*(v21 + 16))();
        sub_1B9E98B68(v20);
        (*(v21 + 56))(v23, 0, 1, v22);
      }

      v8 = (*(v49 + 224) + 48);
      v19 = *v8;
      if ((*v8)(*(v49 + 208), 1, *(v49 + 216)) == 1)
      {
        v18 = *(v49 + 216);
        v17 = *(v49 + 208);
        (*(*(v49 + 224) + 104))(*(v49 + 240), *MEMORY[0x1E69CDD18]);
        if (v19(v17, 1, v18) != 1)
        {
          sub_1B9E98AC0(*(v49 + 208));
        }
      }

      else
      {
        (*(*(v49 + 224) + 32))(*(v49 + 240), *(v49 + 208), *(v49 + 216));
      }

      v15 = *(v49 + 304);
      v16 = *(v49 + 264);
      v14 = *(v49 + 272);
      sub_1B9E8B784(*(v49 + 240));
      (*(v14 + 8))(v15, v16);

      v9 = *(*(v49 + 80) + 8);

      return v9();
    }

    sub_1B9E98BC4(*(v49 + 256), *(v49 + 200));
    sub_1B9ED8CFC();
    if (i)
    {
      v13 = *(v49 + 304);
      v12 = *(v49 + 264);
      v11 = *(v49 + 272);
      sub_1B9E98B68(*(v49 + 200));
      sub_1B9E9895C();
      (*(v11 + 8))(v13, v12);

      v9 = *(*(v49 + 80) + 8);

      return v9();
    }

    v37 = *(v49 + 344);
    v36 = *(v49 + 304);
    v40 = *(v49 + 296);
    v39 = *(v49 + 288);
    v2 = *(v49 + 264);
    v38 = *(v49 + 272);
    v3 = (*(v49 + 200) + *(*(v49 + 184) + 28));
    sub_1B9E8E588(v36, *v3, v3[1]);
    v37(v40, v36, v2);
    sub_1B9ED8F7C();
    sub_1B9E98C54();
    v42 = sub_1B9ED8A5C();
    v41 = *(v38 + 8);
    *(v49 + 368) = v41;
    *(v49 + 376) = (v38 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v41(v39, v2);
    v41(v40, v2);
    if (v42)
    {
      break;
    }

    sub_1B9E98B68(*(v49 + 200));
  }

  v34 = *(v49 + 344);
  v32 = *(v49 + 304);
  v31 = *(v49 + 280);
  v33 = *(v49 + 264);
  v30 = *(v49 + 232);
  (*(*(v49 + 224) + 16))();
  sub_1B9E8B784(v30);
  v34(v31, v32, v33);
  *(v49 + 40) = 0;
  *(v49 + 48) = 0;
  *(v49 + 56) = 1;
  v35 = sub_1B9E98518();
  sub_1B9E8E688();
  v4 = swift_task_alloc();
  *(v49 + 384) = v4;
  *v4 = *(v49 + 80);
  v4[1] = sub_1B9E8D798;
  v5 = *(v49 + 280);
  v6 = *(v49 + 176);
  v7 = *(v49 + 160);

  return MEMORY[0x1EEE6DA68](v5, v49 + 40, v6, v7, v35);
}

uint64_t sub_1B9E8E384()
{
  v9 = v0[46];
  v10 = v0[38];
  v6 = v0[35];
  v8 = v0[33];
  v7 = v0[25];
  v1 = v0[22];
  v2 = v0[21];
  v3 = v0[20];
  v0[10] = v0;
  (*(v2 + 8))(v1, v3);
  v9(v6, v8);
  sub_1B9E98B68(v7);
  sub_1B9E9895C();
  v9(v10, v8);

  v4 = *(v0[10] + 8);

  return v4();
}

uint64_t sub_1B9E8E588(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[1] = a1;
  v4[3] = a2;
  v4[2] = a3;
  v8 = sub_1B9ED8FAC();
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v4[0] = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v7 = v4 - v4[0];
  (*(v5 + 32))(v4 - v4[0]);
  sub_1B9ED8F8C();
  return (*(v5 + 8))(v7, v8);
}

uint64_t sub_1B9E8E6AC(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v39 = a1;
  v40 = a2;
  v47 = a3;
  v48 = a4;
  v49 = a5;
  v41 = a6;
  v42 = "Fatal error";
  v43 = "Unexpectedly found nil while unwrapping an Optional value";
  v44 = "_Concurrency/arm64e-apple-ios.private.swiftinterface";
  v45 = 0;
  v58 = a6;
  v46 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5D68) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v49);
  v50 = &v9 - v46;

  v56 = v48;
  v57 = v49;
  sub_1B9E987AC(v47, v50);
  v51 = sub_1B9ED8CDC();
  v52 = *(v51 - 8);
  v53 = v51 - 8;
  if ((*(v52 + 48))(v50, 1) == 1)
  {
    sub_1B9E96C60(v50);
    v38 = 0;
  }

  else
  {
    v37 = sub_1B9ED8CCC();
    (*(v52 + 8))(v50, v51);
    v38 = v37;
  }

  v34 = v38 | 0x1C00;
  v36 = *(v49 + 16);
  v35 = *(v49 + 24);
  swift_unknownObjectRetain();

  if (v36)
  {
    v32 = v36;
    v33 = v35;
    v26 = v35;
    v27 = v36;
    swift_getObjectType();
    v28 = sub_1B9ED8C6C();
    v29 = v6;
    swift_unknownObjectRelease();
    v30 = v28;
    v31 = v29;
  }

  else
  {
    v30 = 0;
    v31 = 0;
  }

  v24 = v31;
  v25 = v30;

  if (v40)
  {
    v22 = v39;
    v23 = v40;
    v7 = v45;
    v19 = v40;
    v20 = sub_1B9ED8AFC();

    sub_1B9E947E8(v20 + 32, &v54);
    if (v7)
    {
      __break(1u);
    }

    v18 = v54;

    v21 = v18;
  }

  else
  {
    v21 = 0;
  }

  v17 = v21;
  if (v21)
  {
    v12 = v17;
    v11 = v17;
    sub_1B9E96C60(v47);

    v13 = v11;
  }

  else
  {

    sub_1B9E96C60(v47);
    v14 = v56;
    v15 = v57;

    v16 = 0;
    if (v25 != 0 || v24 != 0)
    {
      v55[0] = 0;
      v55[1] = 0;
      v55[2] = v25;
      v55[3] = v24;
      v16 = v55;
    }

    v13 = swift_task_create();
  }

  v10 = v13;

  return v10;
}

uint64_t sub_1B9E8EC14@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B9E8ACA8();
  a1[3] = &unk_1F37E6820;
  a1[4] = &off_1F37E69A0;
  *a1 = result;
  return result;
}

uint64_t *sub_1B9E8EC68(uint64_t a1, const void *a2, int a3)
{
  v153 = a1;
  v152 = a2;
  v151 = a3;
  v122 = sub_1B9E93C4C;
  v123 = sub_1B9E96AFC;
  v124 = sub_1B9E96AF4;
  v125 = sub_1B9E96AF4;
  v126 = sub_1B9E96B08;
  v127 = sub_1B9E96B14;
  v128 = sub_1B9E93C4C;
  v129 = sub_1B9E96AFC;
  v130 = sub_1B9E96B88;
  v131 = sub_1B9E96AFC;
  v132 = sub_1B9E96AF4;
  v133 = sub_1B9E96AF4;
  v134 = sub_1B9E96B08;
  v135 = sub_1B9E96AF4;
  v136 = sub_1B9E96AF4;
  v137 = sub_1B9E96B08;
  v183 = 0;
  v182 = 0;
  v181 = 0;
  v180 = 0;
  v179 = 0;
  v138 = 0;
  v146 = 0;
  v139 = sub_1B9ED85DC();
  v140 = *(v139 - 8);
  v141 = v139 - 8;
  v142 = (*(v140 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v139);
  v143 = v55 - v142;
  v144 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v55 - v142);
  v145 = v55 - v144;
  v147 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBE5D70) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v146);
  v148 = v55 - v147;
  v149 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v150 = v55 - v149;
  v154 = sub_1B9ED8FAC();
  v156 = *(v154 - 8);
  v155 = v154 - 8;
  v157 = v156;
  v158 = *(v156 + 64);
  v159 = (v158 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v153);
  v160 = v55 - v159;
  v161 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v162 = v55 - v161;
  v163 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v164 = v55 - v163;
  v183 = v55 - v163;
  v182 = v11;
  v181 = v12;
  v180 = v13 & 1;
  v179 = v3;
  if (v13)
  {
    v165 = sub_1B9E8C270();
    if (v165)
    {
      v120 = &v165;
      v121 = v165;

      sub_1B9E93A50();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5D88);
      sub_1B9ED8CEC();
    }

    else
    {
      sub_1B9E93A50();
    }

    sub_1B9E8C2D8(0);
  }

  v178 = sub_1B9E8C270();
  v119 = v178 == 0;
  v118 = v119;
  result = &v178;
  sub_1B9E93A50();
  if (v118)
  {
    sub_1B9E93A7C(v152, v150);
    v116 = *(v156 + 48);
    v117 = v156 + 48;
    if (v116(v150, 1, v154) == 1)
    {
      v41 = v143;
      sub_1B9E93BA4(v150);
      v42 = sub_1B9EA025C();
      (*(v140 + 16))(v41, v42, v139);
      v63 = v177;
      sub_1B9E93684(v153, v177);
      v66 = 7;
      v67 = swift_allocObject();
      sub_1B9E93790(v63, (v67 + 16));
      v75 = sub_1B9ED85BC();
      v76 = sub_1B9ED8DCC();
      v64 = 17;
      v69 = swift_allocObject();
      *(v69 + 16) = 32;
      v70 = swift_allocObject();
      *(v70 + 16) = 8;
      v65 = 32;
      v43 = swift_allocObject();
      v44 = v67;
      v68 = v43;
      *(v43 + 16) = v122;
      *(v43 + 24) = v44;
      v45 = swift_allocObject();
      v46 = v68;
      v72 = v45;
      *(v45 + 16) = v123;
      *(v45 + 24) = v46;
      v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBE6160);
      v71 = sub_1B9ED914C();
      v73 = v47;

      v48 = v69;
      v49 = v73;
      *v73 = v124;
      v49[1] = v48;

      v50 = v70;
      v51 = v73;
      v73[2] = v125;
      v51[3] = v50;

      v52 = v72;
      v53 = v73;
      v73[4] = v126;
      v53[5] = v52;
      sub_1B9E8B398();

      if (os_log_type_enabled(v75, v76))
      {
        v54 = v138;
        v56 = sub_1B9ED8E8C();
        v55[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5D80);
        v57 = sub_1B9E945DC(0);
        v58 = sub_1B9E945DC(1);
        v59 = &v176;
        v176 = v56;
        v60 = &v175;
        v175 = v57;
        v61 = &v174;
        v174 = v58;
        sub_1B9E94630(2, &v176);
        sub_1B9E94630(1, v59);
        v172 = v124;
        v173 = v69;
        sub_1B9E94644(&v172, v59, v60, v61);
        v62 = v54;
        if (v54)
        {

          __break(1u);
        }

        else
        {
          v172 = v125;
          v173 = v70;
          sub_1B9E94644(&v172, &v176, &v175, &v174);
          v55[1] = 0;
          v172 = v126;
          v173 = v72;
          sub_1B9E94644(&v172, &v176, &v175, &v174);
          _os_log_impl(&dword_1B9E4B000, v75, v76, "Starting %s for nearby sharing interaction without a time to coordinate from", v56, 0xCu);
          sub_1B9E94690(v57);
          sub_1B9E94690(v58);
          sub_1B9ED8E6C();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v75);
      (*(v140 + 8))(v143, v139);
    }

    else
    {
      v15 = v145;
      v91 = v157;
      v94 = *(v156 + 32);
      v93 = v156 + 32;
      v94(v164, v150, v154);
      v16 = sub_1B9EA025C();
      (*(v140 + 16))(v15, v16, v139);
      v90 = v171;
      sub_1B9E93684(v153, v171);
      v102 = 7;
      v96 = swift_allocObject();
      sub_1B9E93790(v90, (v96 + 16));
      (*(v156 + 16))(v162, v164, v154);
      v92 = (*(v91 + 80) + 16) & ~*(v91 + 80);
      v95 = swift_allocObject();
      v94((v95 + v92), v162, v154);

      v101 = 32;
      v17 = swift_allocObject();
      v18 = v95;
      v103 = v17;
      *(v17 + 16) = v127;
      *(v17 + 24) = v18;

      v114 = sub_1B9ED85BC();
      v115 = sub_1B9ED8DDC();
      v99 = 17;
      v105 = swift_allocObject();
      v98 = 32;
      *(v105 + 16) = 32;
      v106 = swift_allocObject();
      v100 = 8;
      *(v106 + 16) = 8;
      v19 = swift_allocObject();
      v20 = v96;
      v97 = v19;
      *(v19 + 16) = v128;
      *(v19 + 24) = v20;
      v21 = swift_allocObject();
      v22 = v97;
      v107 = v21;
      *(v21 + 16) = v129;
      *(v21 + 24) = v22;
      v108 = swift_allocObject();
      *(v108 + 16) = v98;
      v109 = swift_allocObject();
      *(v109 + 16) = v100;
      v23 = swift_allocObject();
      v24 = v103;
      v104 = v23;
      *(v23 + 16) = v130;
      *(v23 + 24) = v24;
      v25 = swift_allocObject();
      v26 = v104;
      v111 = v25;
      *(v25 + 16) = v131;
      *(v25 + 24) = v26;
      v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBE6160);
      v110 = sub_1B9ED914C();
      v112 = v27;

      v28 = v105;
      v29 = v112;
      *v112 = v132;
      v29[1] = v28;

      v30 = v106;
      v31 = v112;
      v112[2] = v133;
      v31[3] = v30;

      v32 = v107;
      v33 = v112;
      v112[4] = v134;
      v33[5] = v32;

      v34 = v108;
      v35 = v112;
      v112[6] = v135;
      v35[7] = v34;

      v36 = v109;
      v37 = v112;
      v112[8] = v136;
      v37[9] = v36;

      v38 = v111;
      v39 = v112;
      v112[10] = v137;
      v39[11] = v38;
      sub_1B9E8B398();

      if (os_log_type_enabled(v114, v115))
      {
        v40 = v138;
        v82 = sub_1B9ED8E8C();
        v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5D80);
        v83 = sub_1B9E945DC(0);
        v84 = sub_1B9E945DC(2);
        v86 = &v170;
        v170 = v82;
        v87 = &v169;
        v169 = v83;
        v88 = &v168;
        v168 = v84;
        v85 = 2;
        sub_1B9E94630(2, &v170);
        sub_1B9E94630(v85, v86);
        v166 = v132;
        v167 = v105;
        sub_1B9E94644(&v166, v86, v87, v88);
        v89 = v40;
        if (v40)
        {

          __break(1u);
        }

        else
        {
          v166 = v133;
          v167 = v106;
          sub_1B9E94644(&v166, &v170, &v169, &v168);
          v80 = 0;
          v166 = v134;
          v167 = v107;
          sub_1B9E94644(&v166, &v170, &v169, &v168);
          v79 = 0;
          v166 = v135;
          v167 = v108;
          sub_1B9E94644(&v166, &v170, &v169, &v168);
          v78 = 0;
          v166 = v136;
          v167 = v109;
          sub_1B9E94644(&v166, &v170, &v169, &v168);
          v77 = 0;
          v166 = v137;
          v167 = v111;
          sub_1B9E94644(&v166, &v170, &v169, &v168);
          _os_log_impl(&dword_1B9E4B000, v114, v115, "Starting coordinated %s for nearby sharing interaction %s after connecting", v82, 0x16u);
          sub_1B9E94690(v83);
          sub_1B9E94690(v84);
          sub_1B9ED8E6C();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v114);
      (*(v140 + 8))(v145, v139);
      (*(v156 + 8))(v164, v154);
    }

    sub_1B9E93A7C(v152, v148);
    if (v116(v148, 1, v154) == 1)
    {
      sub_1B9ED8F7C();
      if (v116(v148, 1, v154) != 1)
      {
        sub_1B9E93BA4(v148);
      }
    }

    else
    {
      (*(v156 + 32))(v160, v148, v154);
    }

    sub_1B9E8C54C(v153, v160);
    return (*(v156 + 8))(v160, v154);
  }

  return result;
}

uint64_t sub_1B9E90458(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_getDynamicType();
  return sub_1B9ED926C();
}

uint64_t sub_1B9E9049C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v14 = a2;
  v8 = a1;
  v12 = sub_1B9ED8FAC();
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v7 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v11 = &v6 - v7;
  sub_1B9ED8F7C();
  v13 = sub_1B9E90584();
  v15 = v2;
  (*(v9 + 8))(v11, v12);
  result = v13;
  v4 = v14;
  v5 = v15;
  *v14 = v13;
  v4[1] = v5;
  return result;
}

uint64_t sub_1B9E905A8(uint64_t a1, uint64_t a2)
{
  v3[12] = v2;
  v3[11] = a2;
  v3[10] = a1;
  v3[4] = v3;
  v3[2] = 0;
  v3[3] = 0;
  v3[5] = 0;
  v4 = sub_1B9ED85DC();
  v3[13] = v4;
  v3[14] = *(v4 - 8);
  v3[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5D68);
  v3[16] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBE5D90);
  v3[17] = v5;
  v3[18] = *(v5 - 8);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v6 = sub_1B9ED890C();
  v3[21] = v6;
  v3[22] = *(v6 - 8);
  v3[23] = swift_task_alloc();
  v3[2] = a1;
  v3[3] = a2;
  v3[5] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1B9E90808, 0);
}

uint64_t sub_1B9E90808()
{
  v15 = v0[23];
  v13 = v0[22];
  v14 = v0[21];
  v0[4] = v0;
  sub_1B9E8B6F0();
  v16 = SFShockwaveEffectState.isRemoved.getter();
  (*(v13 + 8))(v15, v14);
  if (v16)
  {

    v9 = *(v12[4] + 8);

    return v9();
  }

  else
  {
    v11 = v12[16];
    v1 = sub_1B9ED8CDC();
    (*(*(v1 - 8) + 56))(v11, 1);

    v2 = swift_task_alloc();
    v12[24] = v2;
    *v2 = v12[4];
    v2[1] = sub_1B9E90A6C;
    v3 = v12[20];
    v4 = v12[16];
    v5 = v12[12];
    v6 = v12[11];
    v7 = v12[10];
    v8 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE38098](v3, v7, v6, v4, &unk_1B9EDEC58, v5, v8);
  }
}

uint64_t sub_1B9E90A6C()
{
  v5 = *v1;
  v5[4] = *v1;
  v5[25] = v0;

  if (v0)
  {
    v2 = sub_1B9E910D8;
  }

  else
  {
    v4 = v5[16];

    sub_1B9E96C60(v4);
    v2 = sub_1B9E90BF8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0);
}

uint64_t sub_1B9E90BF8()
{
  v21 = v0[19];
  v19 = v0[18];
  v20 = v0[17];
  v0[4] = v0;
  (*(v19 + 16))();
  if ((*(v19 + 88))(v21, v20) == *MEMORY[0x1E69CDCF0])
  {
    v1 = *(v18 + 120);
    v14 = *(v18 + 104);
    v13 = *(v18 + 112);
    (*(*(v18 + 144) + 8))(*(v18 + 152), *(v18 + 136));
    v2 = sub_1B9EA025C();
    (*(v13 + 16))(v1, v2, v14);
    v16 = sub_1B9ED85BC();
    v15 = sub_1B9ED8DCC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBE6160);
    v17 = sub_1B9ED914C();
    if (os_log_type_enabled(v16, v15))
    {
      v3 = *(v18 + 200);
      buf = sub_1B9ED8E8C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5D80);
      v10 = sub_1B9E945DC(0);
      v11 = sub_1B9E945DC(0);
      *(v18 + 48) = buf;
      *(v18 + 56) = v10;
      *(v18 + 64) = v11;
      sub_1B9E94630(0, (v18 + 48));
      sub_1B9E94630(0, (v18 + 48));
      *(v18 + 72) = v17;
      v12 = swift_task_alloc();
      v12[2] = v18 + 48;
      v12[3] = v18 + 56;
      v12[4] = v18 + 64;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBE6320);
      sub_1B9E96D38();
      sub_1B9ED8BDC();
      if (v3)
      {
      }

      _os_log_impl(&dword_1B9E4B000, v16, v15, "Timed out waiting for shockwave animation to complete", buf, 2u);
      sub_1B9E94690(v10);
      sub_1B9E94690(v11);
      sub_1B9ED8E6C();
    }

    else
    {
    }

    v7 = *(v18 + 120);
    v8 = *(v18 + 104);
    v6 = *(v18 + 112);
    MEMORY[0x1E69E5920](v16);
    (*(v6 + 8))(v7, v8);
  }

  else
  {
    (*(*(v18 + 144) + 8))(*(v18 + 152), *(v18 + 136));
  }

  (*(*(v18 + 144) + 8))(*(v18 + 160), *(v18 + 136));

  v5 = *(*(v18 + 32) + 8);

  return v5();
}

uint64_t sub_1B9E910EC(uint64_t a1, uint64_t a2)
{
  v2[4] = a2;
  v2[2] = v2;
  v2[3] = 0;
  v3 = sub_1B9ED890C();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5F60);
  v2[8] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5F68);
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5D58);
  v2[12] = v5;
  v2[13] = *(v5 - 8);
  v2[14] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5F70);
  v2[15] = v6;
  v2[16] = *(v6 - 8);
  v2[17] = swift_task_alloc();
  v2[3] = a2;

  return MEMORY[0x1EEE6DFA0](sub_1B9E9137C, 0);
}

uint64_t sub_1B9E9137C()
{
  v8 = v0[14];
  v7 = v0[13];
  v9 = v0[12];
  v11 = v0[11];
  v10 = v0[10];
  v12 = v0[9];
  v0[2] = v0;
  sub_1B9E8BC80();
  v1 = sub_1B9E98598();
  MEMORY[0x1BFAE98F0](v9, v1);
  (*(v7 + 8))(v8, v9);
  sub_1B9ED86CC();
  (*(v10 + 8))(v11, v12);
  v2 = swift_task_alloc();
  v13[18] = v2;
  v3 = sub_1B9E98620();
  *v2 = v13[2];
  v2[1] = sub_1B9E914F8;
  v4 = v13[15];
  v5 = v13[8];

  return (MEMORY[0x1EEE6D8E0])(v5, 0, 0, v4, v3);
}

uint64_t sub_1B9E914F8()
{
  *(*v1 + 16) = *v1;

  if (v0)
  {
    v2 = sub_1B9E91908;
  }

  else
  {
    v2 = sub_1B9E91658;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0);
}

uint64_t sub_1B9E91658()
{
  v1 = v0[8];
  v2 = v0[6];
  v3 = v0[5];
  v0[2] = v0;
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    (*(v13[16] + 8))(v13[17], v13[15]);
LABEL_8:

    v8 = *(v13[2] + 8);

    return v8();
  }

  (*(v13[6] + 32))(v13[7], v13[8], v13[5]);
  if (SFShockwaveEffectState.isRemoved.getter())
  {
    v11 = v13[17];
    v12 = v13[15];
    v10 = v13[16];
    (*(v13[6] + 8))(v13[7], v13[5]);
    (*(v10 + 8))(v11, v12);
    goto LABEL_8;
  }

  (*(v13[6] + 8))(v13[7], v13[5]);
  v4 = swift_task_alloc();
  v13[18] = v4;
  v5 = sub_1B9E98620();
  *v4 = v13[2];
  v4[1] = sub_1B9E914F8;
  v6 = v13[15];
  v7 = v13[8];

  return (MEMORY[0x1EEE6D8E0])(v7, 0, 0, v6, v5);
}

uint64_t sub_1B9E91918()
{
  v16 = MEMORY[0x1E69E85E0];
  v17 = &unk_1B9EDEC70;
  v21 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5D68);
  v18 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v19 = v9 - v18;
  v21 = v0;
  v20 = sub_1B9E8C270();
  if (v20)
  {
    v14 = &v20;
    v15 = v20;

    sub_1B9E93A50();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5D88);
    sub_1B9ED8CEC();
  }

  else
  {
    sub_1B9E93A50();
  }

  v12 = 0;
  v2 = sub_1B9ED8CDC();
  (*(*(v2 - 8) + 56))(v19, 1);
  v9[2] = 7;
  v11 = swift_allocObject();
  v9[1] = v11 + 16;

  swift_weakInit();

  sub_1B9ED8CBC();
  v10 = sub_1B9ED8CAC();
  v3 = swift_allocObject();
  v4 = v16;
  v5 = v3;
  v6 = v11;
  v13 = v5;
  v5[2] = v10;
  v5[3] = v4;
  v5[4] = v6;

  v7 = sub_1B9E8E6AC(v12, v12, v19, v17, v13, MEMORY[0x1E69E7CA8] + 8);
  return sub_1B9E8C2D8(v7);
}

uint64_t sub_1B9E91B60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a4;
  v4[10] = v4;
  v4[11] = 0;
  v4[12] = 0;
  v5 = sub_1B9ED8FBC();
  v4[14] = v5;
  v4[15] = *(v5 - 8);
  v4[16] = swift_task_alloc();
  v6 = sub_1B9ED890C();
  v4[17] = v6;
  v4[18] = *(v6 - 8);
  v4[19] = swift_task_alloc();
  v4[11] = a4 + 16;
  sub_1B9ED8CBC();
  v4[20] = sub_1B9ED8CAC();
  v10 = sub_1B9ED8C6C();
  v4[21] = v10;
  v4[22] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1B9E91D0C, v10);
}

uint64_t sub_1B9E91D0C()
{
  *(v0 + 80) = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 184) = Strong;
  swift_endAccess();
  if (Strong)
  {
    v10 = *(v12 + 152);
    v1 = *(v12 + 144);
    *(v12 + 96) = Strong;
    v2 = v1 + 104;
    v3 = *(v1 + 104);
    *(v12 + 192) = v3;
    *(v12 + 200) = v2 & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v3();
    sub_1B9E8B784(v10);
    *(v12 + 64) = sub_1B9ED924C();
    *(v12 + 72) = v4;
    *(v12 + 40) = 0;
    *(v12 + 48) = 0;
    *(v12 + 56) = 1;
    v11 = sub_1B9E98518();
    sub_1B9E8E688();
    v5 = swift_task_alloc();
    *(v12 + 208) = v5;
    *v5 = *(v12 + 80);
    v5[1] = sub_1B9E91F98;
    v6 = *(v12 + 128);
    v7 = *(v12 + 112);

    return sub_1B9E92324(v12 + 64, v12 + 40, v6, v7, v11);
  }

  else
  {

    v9 = *(*(v12 + 80) + 8);

    return v9();
  }
}

uint64_t sub_1B9E91F98()
{
  v5 = *v1;
  v5[10] = *v1;
  v5[27] = v0;

  if (v0)
  {
    v2 = v5[21];
    v3 = sub_1B9E92230;
  }

  else
  {
    (*(v5[15] + 8))(v5[16], v5[14]);
    v2 = v5[21];
    v3 = sub_1B9E92138;
  }

  return MEMORY[0x1EEE6DFA0](v3, v2);
}

uint64_t sub_1B9E92138()
{
  v1 = v0[24];
  v4 = v0[19];
  v0[10] = v0;
  v1();
  sub_1B9E8B784(v4);

  v2 = *(v0[10] + 8);

  return v2();
}

uint64_t sub_1B9E92230()
{
  v1 = *(v0 + 120);
  *(v0 + 80) = v0;
  (*(v1 + 8))();

  v2 = *(*(v0 + 80) + 8);

  return v2();
}

uint64_t sub_1B9E92324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = v5;
  *(v5 + 16) = v5;
  v6 = swift_task_alloc();
  *(v8 + 24) = v6;
  *v6 = *(v8 + 16);
  v6[1] = sub_1B9E92410;

  return sub_1B9E94958(a1, a2, a4, a5);
}

uint64_t sub_1B9E92410()
{
  v2 = *v1;
  *(v2 + 16) = *v1;
  v5 = v2 + 16;

  if (v0)
  {
    v3 = *(*v5 + 8);
  }

  else
  {
    v3 = *(*v5 + 8);
  }

  return v3();
}

uint64_t sub_1B9E9259C(uint64_t a1)
{
  v9 = a1;
  v18 = 0;
  v17 = 0;
  v5 = 0;
  v8 = sub_1B9ED897C();
  v11 = *(v8 - 8);
  v7 = v8 - 8;
  v6 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v12 = &v5 - v6;
  v16 = sub_1B9ED87AC();
  v13 = *(v16 - 8);
  v14 = v16 - 8;
  v10 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v5 - v10;
  v18 = v3;
  v17 = v1;
  (*(v11 + 16))(v2);
  sub_1B9ED87BC();
  sub_1B9E92718(v15);
  return (*(v13 + 8))(v15, v16);
}

uint64_t sub_1B9E92718(uint64_t a1)
{
  v41 = a1;
  v54 = 0;
  v53 = 0;
  v55 = 0;
  v35 = 0;
  v23 = sub_1B9ED876C();
  v24 = *(v23 - 8);
  v25 = v23 - 8;
  v26 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v27 = &v14 - v26;
  v28 = sub_1B9ED895C();
  v29 = *(v28 - 8);
  v30 = v28 - 8;
  v31 = (*(v29 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v14 - v31;
  v55 = &v14 - v31;
  v33 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBE5D70) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v14 - v33;
  v36 = sub_1B9ED896C();
  v37 = *(v36 - 8);
  v38 = v36 - 8;
  v39 = (*(v37 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v35);
  v40 = &v14 - v39;
  v45 = sub_1B9ED890C();
  v43 = *(v45 - 8);
  v44 = v45 - 8;
  v42 = (*(v43 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v41);
  v46 = &v14 - v42;
  v54 = v2;
  v53 = v1;
  sub_1B9E8B6F0();
  v47 = SFShockwaveEffectState.isLogicallyComplete.getter();
  (*(v43 + 8))(v46, v45);
  result = v47;
  if ((v47 & 1) == 0)
  {
    sub_1B9ED879C();
    v22 = (*(v37 + 88))(v40, v36);
    if (v22 == *MEMORY[0x1E69CDD70])
    {
      (*(v37 + 96))(v40, v36);
      (*(v43 + 104))(v46, *MEMORY[0x1E69CDD00], v45);
      sub_1B9E8B784(v46);
      v4 = sub_1B9ED893C();
      return (*(*(v4 - 8) + 8))(v40);
    }

    else if (v22 == *MEMORY[0x1E69CDD80])
    {
      (*(v37 + 96))(v40, v36);
      (*(v29 + 32))(v32, v40, v28);
      v55 = v32;
      sub_1B9ED878C();
      v20 = (*(v24 + 88))(v27, v23);
      if (v20 == *MEMORY[0x1E69CDB50])
      {
        v50[5] = sub_1B9ED894C();
        v50[6] = v6;
        v19 = v6 != 0;
        v18 = v19;
        sub_1B9E96F0C();
        if (v18)
        {
          v7 = sub_1B9E8B020();
          v17 = v49;
          v49[3] = &unk_1F37E6848;
          v49[4] = &off_1F37E69B0;
          v49[0] = v7;
          sub_1B9ED877C();
          sub_1B9E8EC68(v17, v34, 1);
          sub_1B9E93BA4(v34);
          __swift_destroy_boxed_opaque_existential_1(v17);
        }

        else
        {
          sub_1B9ED877C();
          v16 = v50;
          sub_1B9E8EC14(v50);
          v8 = sub_1B9E8EC5C();
          sub_1B9E8EC68(v16, v34, v8 & 1);
          __swift_destroy_boxed_opaque_existential_1(v16);
          sub_1B9E93BA4(v34);
        }
      }

      else if (v20 == *MEMORY[0x1E69CDB58])
      {
        v9 = sub_1B9E8B020();
        v15 = v51;
        v51[3] = &unk_1F37E6848;
        v51[4] = &off_1F37E69B0;
        v51[0] = v9;
        sub_1B9ED8F7C();
        v10 = sub_1B9ED8FAC();
        (*(*(v10 - 8) + 56))(v34, 0, 1);
        v11 = sub_1B9E8EC5C();
        sub_1B9E8EC68(v15, v34, v11 & 1);
        sub_1B9E93BA4(v34);
        __swift_destroy_boxed_opaque_existential_1(v15);
      }

      else
      {
        sub_1B9ED877C();
        v14 = &v52;
        sub_1B9E8EC14(&v52);
        v12 = sub_1B9E8EC5C();
        sub_1B9E8EC68(v14, v34, v12 & 1);
        __swift_destroy_boxed_opaque_existential_1(v14);
        sub_1B9E93BA4(v34);
        (*(v24 + 8))(v27, v23);
      }

      return (*(v29 + 8))(v32, v28);
    }

    else if (v22 == *MEMORY[0x1E69CDD78])
    {
      (*(v37 + 96))(v40, v36);
      sub_1B9E91918();
      v13 = sub_1B9ED892C();
      return (*(*(v13 - 8) + 8))(v40);
    }

    else if (v22 == *MEMORY[0x1E69CDD68])
    {
      sub_1B9ED877C();
      v21 = &v48;
      sub_1B9E8EC14(&v48);
      v5 = sub_1B9E8EC5C();
      sub_1B9E8EC68(v21, v34, v5 & 1);
      __swift_destroy_boxed_opaque_existential_1(v21);
      return sub_1B9E93BA4(v34);
    }

    else
    {
      (*(v43 + 104))(v46, *MEMORY[0x1E69CDD18], v45);
      sub_1B9E8B784(v46);
      return (*(v37 + 8))(v40, v36);
    }
  }

  return result;
}

uint64_t sub_1B9E931D4()
{
  v14 = 0;
  v10 = sub_1B9ED890C();
  v6 = *(v10 - 8);
  v7 = v10 - 8;
  v4 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v8 = &v3 - v4;
  v5 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v3 - v4);
  v9 = &v3 - v5;
  v14 = v0;
  sub_1B9E8B6F0();
  (*(v6 + 104))(v8, *MEMORY[0x1E69CDD00], v10);
  v13 = sub_1B9ED88FC();
  v12 = *(v6 + 8);
  v11 = v6 + 8;
  v12(v8, v10);
  v12(v9, v10);
  result = v13;
  if (v13)
  {
    return sub_1B9E91918();
  }

  return result;
}

uint64_t ShockwaveAnimationCoordinator.deinit()
{
  v3 = OBJC_IVAR____TtC9SharingUI29ShockwaveAnimationCoordinator__state;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5D50);
  (*(*(v1 - 8) + 8))(v0 + v3);
  sub_1B9E93A50();
  return v4;
}

uint64_t sub_1B9E93454@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ShockwaveAnimationCoordinator();
  result = sub_1B9ED86DC();
  *a1 = result;
  return result;
}

uint64_t static ShockwaveAnimationCoordinator.== infix(_:_:)()
{

  sub_1B9ED8A7C();

  sub_1B9ED8A7C();
  return sub_1B9ED8A6C() & 1;
}

uint64_t sub_1B9E93528@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4[1] = a3;
  v7 = a1;
  v8 = a2;
  v9 = a2;
  v5 = *(a2 - 8);
  v6 = a2 - 8;
  v4[0] = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](a1);
  v4[2] = v4 - v4[0];
  (*(v5 + 16))();
  sub_1B9ED86EC();
  return (*(v5 + 8))(v7, v8);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  v4 = *a1;
  if (!*a1)
  {
    TypeByMangledNameInContext2 = swift_getTypeByMangledNameInContext2();
    *a1 = TypeByMangledNameInContext2;
    return TypeByMangledNameInContext2;
  }

  return v4;
}

uint64_t sub_1B9E93684(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  *(a2 + 32) = *(a1 + 32);
  (**(v2 - 8))(a2);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t a1)
{
  v2 = *(a1 + 24);
  if ((*(*(v2 - 8) + 80) & 0x20000) != 0)
  {
  }

  else
  {
    return (*(*(v2 - 8) + 8))(a1);
  }
}

uint64_t sub_1B9E937CC(uint64_t a1)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v5 = *(sub_1B9ED8FAC() - 8);
  v10 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v11 = (v10 + *(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v3 = swift_task_alloc();
  *(v6 + 24) = v3;
  *v3 = *(v6 + 16);
  v3[1] = sub_1B9E93928;

  return sub_1B9E8C888(a1, v7, v8, v9, v1 + v10, v1 + v11);
}

uint64_t sub_1B9E93928()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

void *sub_1B9E93A7C(const void *a1, void *a2)
{
  v6 = sub_1B9ED8FAC();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBE5D70);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_1B9E93BA4(uint64_t a1)
{
  v3 = sub_1B9ED8FAC();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_1B9E93D24()
{
  sub_1B9E9814C();
  sub_1B9E982CC();
  return sub_1B9ED90CC();
}

uint64_t sub_1B9E93D60()
{
  sub_1B9E9814C();
  sub_1B9E982CC();
  return sub_1B9ED909C();
}

uint64_t sub_1B9E93DAC()
{
  sub_1B9E9814C();
  sub_1B9E982CC();
  return sub_1B9ED90AC() & 1;
}

uint64_t sub_1B9E93DFC()
{
  sub_1B9E9814C();
  sub_1B9E982CC();
  return sub_1B9ED90BC();
}

uint64_t sub_1B9E93E48()
{
  sub_1B9E981CC();
  sub_1B9E982CC();
  return sub_1B9ED90CC();
}

uint64_t sub_1B9E93E84()
{
  sub_1B9E981CC();
  sub_1B9E982CC();
  return sub_1B9ED909C();
}

uint64_t sub_1B9E93ED0()
{
  sub_1B9E981CC();
  sub_1B9E982CC();
  return sub_1B9ED90AC() & 1;
}

uint64_t sub_1B9E93F20()
{
  sub_1B9E981CC();
  sub_1B9E982CC();
  return sub_1B9ED90BC();
}

uint64_t sub_1B9E93F6C()
{
  sub_1B9E9824C();
  sub_1B9E982CC();
  return sub_1B9ED90CC();
}

uint64_t sub_1B9E93FA8()
{
  sub_1B9E9824C();
  sub_1B9E982CC();
  return sub_1B9ED909C();
}

uint64_t sub_1B9E93FF4()
{
  sub_1B9E9824C();
  sub_1B9E982CC();
  return sub_1B9ED90AC() & 1;
}

uint64_t sub_1B9E94044()
{
  sub_1B9E9824C();
  sub_1B9E982CC();
  return sub_1B9ED90BC();
}

void sub_1B9E94160(uint64_t a1@<X8>)
{
  sub_1B9E9419C();
  *a1 = v1;
  *(a1 + 8) = v2 & 1;
}

uint64_t sub_1B9E942A4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B9E942DC();
  *a1 = result;
  return result;
}

uint64_t sub_1B9E942DC()
{

  v1 = sub_1B9ED8A9C();
  MEMORY[0x1E69E5928]();

  MEMORY[0x1E69E5920](v1);
  return v1;
}

uint64_t sub_1B9E94348@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B9E9437C(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B9E9437C(uint64_t a1)
{
  MEMORY[0x1E69E5928]();
  v3 = sub_1B9ED8AAC();
  MEMORY[0x1E69E5920](a1);
  return v3;
}

uint64_t sub_1B9E943DC()
{
  sub_1B9E98444();
  sub_1B9E9814C();
  return sub_1B9ED907C();
}

uint64_t sub_1B9E94428()
{
  sub_1B9E983C4();
  sub_1B9E981CC();
  return sub_1B9ED907C();
}

uint64_t sub_1B9E94474()
{
  sub_1B9E98344();
  sub_1B9E9824C();
  return sub_1B9ED907C();
}

uint64_t sub_1B9E945DC(uint64_t a1)
{
  if (a1)
  {
    return sub_1B9ED8E8C();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B9E94630(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_1B9E94690(uint64_t result)
{
  if (result)
  {
    sub_1B9ED8E7C();
    return sub_1B9ED8E6C();
  }

  return result;
}

uint64_t sub_1B9E946F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a3;
  v7[1] = a4;
  v8 = *(a3 - 8);
  v9 = a3 - 8;
  v7[0] = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](a1);
  v10 = v7 - v7[0];
  v4();
  v12 = sub_1B9ED90DC();
  v13 = v5;
  (*(v8 + 8))(v10, v11);
  return v12;
}

uint64_t sub_1B9E947E8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (!a1)
  {
    sub_1B9ED8FFC();
    __break(1u);
  }

  result = swift_task_create();
  *a2 = result;
  return result;
}

uint64_t sub_1B9E94958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[7] = v4;
  v5[6] = a4;
  v5[5] = a3;
  v5[4] = a2;
  v5[3] = a1;
  v5[2] = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[8] = AssociatedTypeWitness;
  v5[9] = *(AssociatedTypeWitness - 8);
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B9E94A84, 0);
}

uint64_t sub_1B9E94A84()
{
  v9 = v0[10];
  v8 = v0[9];
  v10 = v0[8];
  v0[2] = v0;
  sub_1B9ED91AC();
  swift_getAssociatedConformanceWitness();
  sub_1B9ED8FCC();
  v1 = *(v8 + 8);
  v0[12] = v1;
  v0[13] = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v1(v9, v10);
  v2 = swift_task_alloc();
  v11[14] = v2;
  *v2 = v11[2];
  v2[1] = sub_1B9E94BEC;
  v3 = v11[11];
  v4 = v11[6];
  v5 = v11[5];
  v6 = v11[4];

  return MEMORY[0x1EEE6DE58](v3, v6, v5, v4);
}

uint64_t sub_1B9E94BEC()
{
  v4 = *v1;
  *(v4 + 16) = *v1;
  *(v4 + 120) = v0;

  if (v0)
  {
    (*(v4 + 96))(*(v4 + 88), *(v4 + 64));

    return MEMORY[0x1EEE6DFA0](sub_1B9E94DBC, 0);
  }

  else
  {
    (*(v4 + 96))();

    v2 = *(*(v4 + 16) + 8);

    return v2();
  }
}

uint64_t sub_1B9E94DBC()
{
  *(v0 + 16) = v0;

  v1 = *(*(v0 + 16) + 8);

  return v1();
}

void *sub_1B9E94E8C(void *a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = a4();
  sub_1B9E94F28(v4, v5, a3);
  v8 = *a1;

  sub_1B9ED8EBC();
  result = a1;
  *a1 = v8 + 8;
  return result;
}

uint64_t sub_1B9E94F28(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  v14 = sub_1B9E950CC(&v17, 0, 0, 1, a1, a2);
  v15 = v3;
  v16 = v4;
  v11 = v17;
  swift_unknownObjectRetain();
  if (v14)
  {
    swift_unknownObjectRelease();

    v12[3] = swift_getObjectType();
    swift_unknownObjectRetain();
    v12[0] = v14;
    v6 = *a3;
    if (*a3)
    {
      sub_1B9E98714(v12, v6);
      swift_unknownObjectRelease();
      *a3 = v6 + 32;
    }

    else
    {
      swift_unknownObjectRelease();
    }

    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    v13[3] = MEMORY[0x1E69E6A18];
    v13[0] = a1;
    v13[1] = a2;
    v7 = *a3;
    if (*a3)
    {
      sub_1B9E98714(v13, v7);
      swift_unknownObjectRelease();
      *a3 = v7 + 32;
    }

    else
    {
      swift_unknownObjectRelease();
    }

    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  return v11;
}

uint64_t sub_1B9E950CC(uint64_t result, char *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v19 = result;
  v25 = a6;
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (a2)
      {
        if (!a3)
        {
          __break(1u);
        }

        v18 = a3 - a2;
      }

      else
      {
        v18 = 0;
      }

      v17 = (a6 & 0xF00000000000000uLL) >> 56;
      if (v17 < v18)
      {
        if (a2)
        {
          v16 = a2;
        }

        else
        {
          sub_1B9ED8FFC();
          __break(1u);
        }

        v22[0] = a5;
        v22[1] = a6 & (-bswap64(0xFFuLL) - 1);
        sub_1B9E95484(v22, v17, v16);
        sub_1B9ED8ECC();
        *v19 = v16;
        v12 = 0;
        v13 = v17;
        v14 = 1;
        v15 = 0;
        goto LABEL_28;
      }
    }

    goto LABEL_14;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
LABEL_14:
    v6 = sub_1B9E95600(a5, a6);
    *v19 = v7;
    v12 = v6;
    v13 = v8;
    v14 = 0;
    v15 = 1;
LABEL_28:
    v22[2] = v12;
    v22[3] = v13;
    v23 = v14 & 1;
    v24 = v15 & 1;
    return v12;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    if ((a6 & 0xFFFFFFFFFFFFFFFLL) != 0xFFFFFFFFFFFFFFE0)
    {
      v11 = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
      goto LABEL_23;
    }

    __break(1u);
  }

  result = sub_1B9ED8F1C();
  if (result)
  {
    v10 = result;
  }

  else
  {
    result = sub_1B9ED8FFC();
    __break(1u);
  }

  v11 = v10;
LABEL_23:
  *v19 = v11;
  if (a6 < 0)
  {
    v9 = 0;
LABEL_27:
    v12 = v9;
    v13 = a5 & 0xFFFFFFFFFFFFLL;
    v14 = 0;
    v15 = 0;
    goto LABEL_28;
  }

  if ((a6 & 0xFFFFFFFFFFFFFFFLL) != 0)
  {
    swift_unknownObjectRetain();
    v9 = a6 & 0xFFFFFFFFFFFFFFFLL;
    goto LABEL_27;
  }

  __break(1u);
  return result;
}

char *sub_1B9E95484(char *result, int64_t a2, char *a3)
{
  if (a2 < 0)
  {
LABEL_7:
    result = sub_1B9ED904C();
    __break(1u);
    goto LABEL_8;
  }

  if ((a2 * 1) >> 64 == a2 >> 63)
  {
    if (result >= &a3[a2] || a3 >= &result[a2])
    {
      memcpy(a3, result, a2);
      return a3;
    }

    sub_1B9ED904C();
    __break(1u);
    goto LABEL_7;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1B9E95600(uint64_t a1, uint64_t a2)
{
  v7 = sub_1B9E956BC(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5F88);
  inited = swift_initStackObject();
  v3 = sub_1B9E95ECC(inited, 1);
  *v4 = 0;
  sub_1B9E95F18();
  sub_1B9E95F4C(v3);

  v8 = sub_1B9E962F4(v7);

  result = v8;
  if (!__OFSUB__(v8, 1))
  {
    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B9E956BC(uint64_t a1, uint64_t a2)
{
  v16[15] = a2;
  if ((a2 & 0x1000000000000000) != 0)
  {
    v13 = sub_1B9ED8B4C();
  }

  else
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v12 = (a2 & 0xF00000000000000uLL) >> 56;
    }

    else
    {
      v12 = a1 & 0xFFFFFFFFFFFFLL;
    }

    v13 = v12;
  }

  if (!v13)
  {
    return sub_1B9E96814();
  }

  v10 = sub_1B9E9630C(v13, 0);

  v11 = (v10 + 4);

  if (v13 < 0)
  {
LABEL_30:
    sub_1B9ED904C();
    __break(1u);
    return sub_1B9E96814();
  }

  v16[12] = a2;
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v16[0] = a1;
      v16[1] = a2 & (-bswap64(0xFFuLL) - 1);
      if (v13 >= ((a2 & 0xF00000000000000uLL) >> 56))
      {
        sub_1B9E96450(v16, (a2 & 0xF00000000000000uLL) >> 56, v11);
        v8 = (a2 & 0xF00000000000000uLL) >> 56;
        goto LABEL_26;
      }

      goto LABEL_29;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      if ((a2 & 0xFFFFFFFFFFFFFFFLL) != 0xFFFFFFFFFFFFFFE0)
      {
        v6 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v7 = a1 & 0xFFFFFFFFFFFFLL;
        goto LABEL_22;
      }

      __break(1u);
    }

    v6 = sub_1B9ED8F1C();
    v7 = v3;
LABEL_22:
    if (v13 >= v7)
    {
      if (!v6)
      {
        __break(1u);
      }

      sub_1B9E96450(v6, v7, v11);
      v8 = v7;
      goto LABEL_26;
    }

    goto LABEL_29;
  }

  v9 = sub_1B9ED8F0C();
  if (v2)
  {
LABEL_29:
    sub_1B9ED8FFC();
    __break(1u);
    goto LABEL_30;
  }

  v8 = v9;
LABEL_26:
  v16[11] = 0xE000000000000000;

  v16[13] = 0;
  v16[14] = 0xE000000000000000;
  v16[10] = 0xE000000000000000;
  if (v8 != v13)
  {
    sub_1B9ED8FFC();
    __break(1u);
  }

  sub_1B9E96F0C();
  return v10;
}

uint64_t sub_1B9E95ECC(uint64_t a1, uint64_t a2)
{

  *(a1 + 16) = a2;
  *(a1 + 24) = 2 * a2;

  return a1;
}

void sub_1B9E95F4C(uint64_t a1)
{
  v18 = sub_1B9E962F4(a1);
  v2 = sub_1B9E962F4(*v1);
  v19 = v2 + v18;
  if (__OFADD__(v2, v18))
  {
    goto LABEL_31;
  }

  v14 = *v17;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v17 = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v19 > *(*v17 + 24) >> 1)
  {
    if (*(*v17 + 16) < v19)
    {
      v13 = v19;
    }

    else
    {
      v13 = *(*v17 + 16);
    }

    v12 = *v17;

    *v17 = sub_1B9E96844(isUniquelyReferenced_nonNull_native, v13, 1, v12);
  }

  v4 = *(*v17 + 16);
  v10 = (*v17 + 32 + v4);
  v5 = *(*v17 + 24) >> 1;
  v11 = v5 - v4;
  if (__OFSUB__(v5, v4))
  {
    goto LABEL_32;
  }

  if (v11 < 0)
  {
LABEL_30:
    sub_1B9ED904C();
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!sub_1B9E969B0(a1))
  {
LABEL_21:

    if (v18 <= 0)
    {
      goto LABEL_28;
    }

    sub_1B9ED8FFC();
    __break(1u);
    goto LABEL_30;
  }

  if (v11 < v18)
  {
    sub_1B9ED8FFC();
    __break(1u);
    goto LABEL_21;
  }

  sub_1B9E96450((a1 + 32), v18, v10);

  swift_unknownObjectRelease();
  if (v18 <= 0)
  {
    goto LABEL_28;
  }

  v7 = *(*v17 + 16);
  v9 = v7 + v18;
  if (!__OFADD__(v7, v18))
  {
    *(*v17 + 16) = v9;
LABEL_28:
    sub_1B9E947DC();
    return;
  }

LABEL_33:
  __break(1u);
}

void *sub_1B9E9630C(uint64_t a1, uint64_t a2)
{
  if (a2 < a1)
  {
    v7 = a1;
  }

  else
  {
    v7 = a2;
  }

  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5F88);
    v6 = swift_allocObject();

    if (_swift_stdlib_has_malloc_size())
    {
      v4 = _swift_stdlib_malloc_size(v6) - 32;
      v6[2] = a1;
      v6[3] = 2 * v4;
    }

    else
    {
      v6[2] = a1;
      v6[3] = 2 * v7;
    }

    return v6;
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];

    return v3;
  }
}

void *sub_1B9E96450(char *a1, size_t a2, char *a3)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a1 >= &a3[a2] || a3 >= &a1[a2])
    {
      return memcpy(a3, a1, a2);
    }

    sub_1B9ED904C();
    __break(1u);
  }

  result = sub_1B9ED904C();
  __break(1u);
  return result;
}

uint64_t sub_1B9E965A0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = a1;
  if ((a3 & 0x1000000000000000) != 0 && (a2 & 0x800000000000000) == 0)
  {
    v10 = a1 >> 16;
    if ((a3 & 0x1000000000000000) != 0)
    {
      v9 = MEMORY[0x1BFAE9D00](15, v10, a2, a3);
LABEL_11:
      if (v11 >> 14)
      {
        v7 = ((v9 >> 16) + (v11 >> 14)) << 16;
      }

      else
      {
        v7 = v9 & 0xFFFFFFFFFFFFFFFCLL | v11 & 3;
      }

      return v7 | 8;
    }

    if ((v10 & 0x8000000000000000) == 0)
    {
      v8 = (a3 & 0x2000000000000000) != 0 ? (a3 & 0xF00000000000000uLL) >> 56 : a2 & 0xFFFFFFFFFFFFLL;
      if (v8 >= v10)
      {
        v9 = (v10 << 16) | 4;
        goto LABEL_11;
      }
    }

    sub_1B9ED8FFC();
    __break(1u);
  }

  v5 = sub_1B9ED8B8C();
  if (v11 >> 14)
  {
    v4 = ((v5 >> 16) + (v11 >> 14)) << 16;
  }

  else
  {
    v4 = v5 & 0xFFFFFFFFFFFFFFFCLL | v11 & 3;
  }

  return v4 | 4;
}

uint64_t sub_1B9E96814()
{
  v1 = MEMORY[0x1E69E7CC0];

  return v1;
}

char *sub_1B9E96844(char *result, uint64_t a2, char a3, uint64_t a4)
{
  v7 = result;
  v9 = *(a4 + 24) >> 1;
  if (a3)
  {
    if (v9 < a2)
    {
      if ((v9 * 2) >> 64 != (2 * v9) >> 63)
      {
        __break(1u);
        return result;
      }

      if (2 * v9 < a2)
      {
        v6 = a2;
      }

      else
      {
        v6 = 2 * v9;
      }
    }

    else
    {
      v6 = *(a4 + 24) >> 1;
    }
  }

  else
  {
    v6 = a2;
  }

  v4 = *(a4 + 16);
  v5 = sub_1B9E9630C(v4, v6);
  if (v7)
  {
    sub_1B9E969B8((a4 + 32), v4, v5 + 32);

    *(a4 + 16) = 0;
  }

  else
  {

    sub_1B9E96450((a4 + 32), v4, v5 + 32);
    swift_unknownObjectRelease();
  }

  return v5;
}

char *sub_1B9E969B8(char *result, size_t a2, char *a3)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    result = sub_1B9ED904C();
    __break(1u);
  }

  else if (a3 < result || a3 >= &result[a2] || a3 != result)
  {
    return memmove(a3, result, a2);
  }

  return result;
}

_BYTE **sub_1B9E96AE0(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_1B9E96B14@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1B9ED8FAC();
  v3 = v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80));

  return sub_1B9E9049C(v3, a1);
}

uint64_t sub_1B9E96BA4(uint64_t a1)
{
  v4 = v1;
  *(v1 + 16) = v1;
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_1B9E93928;

  return sub_1B9E910EC(a1, v5);
}

uint64_t sub_1B9E96C60(uint64_t a1)
{
  v3 = sub_1B9ED8CDC();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t sub_1B9E96D38()
{
  v2 = qword_1EBBE5DA0;
  if (!qword_1EBBE5DA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBBE6320);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBE5DA0);
    return WitnessTable;
  }

  return v2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  v4 = *a1;
  if (!*a1)
  {
    TypeByMangledNameInContextInMetadataState2 = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = TypeByMangledNameInContextInMetadataState2;
    return TypeByMangledNameInContextInMetadataState2;
  }

  return v4;
}

uint64_t sub_1B9E96E34(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1B9E93928;

  return sub_1B9E91B60(a1, v6, v7, v8);
}

uint64_t type metadata accessor for ShockwaveAnimationCoordinator()
{
  v1 = qword_1EBBE5E90;
  if (!qword_1EBBE5E90)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_1B9E96FE8()
{
  v2 = swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t sub_1B9E97158()
{
  updated = sub_1B9E974FC();
  if (v0 <= 0x3F)
  {
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

uint64_t dispatch thunk of ShockwaveAnimationCoordinator.waitUntilAnimationCompletes(timeout:)(uint64_t a1, uint64_t a2)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v8 = (*(*v2 + 192) + **(*v2 + 192));
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_1B9E93928;

  return v8(a1, a2);
}

uint64_t dispatch thunk of ShockwaveAnimationCoordinator.update(using:)()
{
  return (*(*v0 + 208))();
}

{
  return (*(*v0 + 216))();
}

uint64_t sub_1B9E974FC()
{
  v4 = qword_1EBBE5EA0;
  if (!qword_1EBBE5EA0)
  {
    sub_1B9ED890C();
    v3 = sub_1B9ED874C();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1EBBE5EA0);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for UIInterfaceOrientationMask()
{
  v4 = qword_1EBBE5EA8;
  if (!qword_1EBBE5EA8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EBBE5EA8);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for SFUIUserInterfaceLayoutDirection()
{
  v4 = qword_1EBBE5EB0;
  if (!qword_1EBBE5EB0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EBBE5EB0);
      return v1;
    }
  }

  return v4;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1B9E976D8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 16))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_1B9E977E4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (a3)
    {
      *(result + 16) = 1;
    }
  }

  else if (a3)
  {
    *(result + 16) = 0;
  }

  return result;
}

uint64_t type metadata accessor for CGSize()
{
  v4 = qword_1EBBE5EB8;
  if (!qword_1EBBE5EB8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EBBE5EB8);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for DocumentType()
{
  v4 = qword_1EBBE5EC0;
  if (!qword_1EBBE5EC0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EBBE5EC0);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for DocumentAttributeKey()
{
  v4 = qword_1EBBE5EC8;
  if (!qword_1EBBE5EC8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EBBE5EC8);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for URLResourceKey()
{
  v4 = qword_1EBBE5ED0;
  if (!qword_1EBBE5ED0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EBBE5ED0);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_1B9E97C0C()
{
  v2 = qword_1EBBE5ED8;
  if (!qword_1EBBE5ED8)
  {
    type metadata accessor for URLResourceKey();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBE5ED8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9E97CA4()
{
  v2 = qword_1EBBE5EE0;
  if (!qword_1EBBE5EE0)
  {
    type metadata accessor for URLResourceKey();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBE5EE0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9E97D3C()
{
  v2 = qword_1EBBE5EE8;
  if (!qword_1EBBE5EE8)
  {
    type metadata accessor for DocumentAttributeKey();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBE5EE8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9E97DD4()
{
  v2 = qword_1EBBE5EF0;
  if (!qword_1EBBE5EF0)
  {
    type metadata accessor for DocumentAttributeKey();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBE5EF0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9E97E6C()
{
  v2 = qword_1EBBE5EF8;
  if (!qword_1EBBE5EF8)
  {
    type metadata accessor for DocumentType();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBE5EF8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9E97F04()
{
  v2 = qword_1EBBE5F00;
  if (!qword_1EBBE5F00)
  {
    type metadata accessor for DocumentType();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBE5F00);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9E97F9C()
{
  v2 = qword_1EBBE5F08;
  if (!qword_1EBBE5F08)
  {
    type metadata accessor for DocumentType();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBE5F08);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9E98034()
{
  v2 = qword_1EBBE5F10;
  if (!qword_1EBBE5F10)
  {
    type metadata accessor for DocumentAttributeKey();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBE5F10);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9E980CC()
{
  v2 = qword_1EBBE5F18;
  if (!qword_1EBBE5F18)
  {
    type metadata accessor for URLResourceKey();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBE5F18);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9E9814C()
{
  v2 = qword_1EBBE5F20;
  if (!qword_1EBBE5F20)
  {
    type metadata accessor for URLResourceKey();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBE5F20);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9E981CC()
{
  v2 = qword_1EBBE5F28;
  if (!qword_1EBBE5F28)
  {
    type metadata accessor for DocumentAttributeKey();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBE5F28);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9E9824C()
{
  v2 = qword_1EBBE5F30;
  if (!qword_1EBBE5F30)
  {
    type metadata accessor for DocumentType();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBE5F30);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9E982CC()
{
  v2 = qword_1EBBE5F38;
  if (!qword_1EBBE5F38)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBE5F38);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9E98344()
{
  v2 = qword_1EBBE5F40;
  if (!qword_1EBBE5F40)
  {
    type metadata accessor for DocumentType();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBE5F40);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9E983C4()
{
  v2 = qword_1EBBE5F48;
  if (!qword_1EBBE5F48)
  {
    type metadata accessor for DocumentAttributeKey();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBE5F48);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9E98444()
{
  v2 = qword_1EBBE5F50;
  if (!qword_1EBBE5F50)
  {
    type metadata accessor for URLResourceKey();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBE5F50);
    return WitnessTable;
  }

  return v2;
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    return swift_coroFrameAlloc();
  }

  else
  {
    return malloc(a1);
  }
}

unint64_t sub_1B9E98518()
{
  v2 = qword_1EBBE5F58;
  if (!qword_1EBBE5F58)
  {
    sub_1B9ED8FBC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBE5F58);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9E98598()
{
  v2 = qword_1EBBE5F78;
  if (!qword_1EBBE5F78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBE5D58);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBE5F78);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9E98620()
{
  v2 = qword_1EBBE5F80;
  if (!qword_1EBBE5F80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBE5F70);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBE5F80);
    return WitnessTable;
  }

  return v2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  v2 = *(*(a2 - 8) + 80);
  if ((v2 & 0x20000) != 0)
  {
    return (*result + ((v2 + 16) & ~v2));
  }

  return result;
}

uint64_t sub_1B9E98714(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  (**(v2 - 8))(a2);
  return a2;
}

void *sub_1B9E987AC(const void *a1, void *a2)
{
  v6 = sub_1B9ED8CDC();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5D68);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

unint64_t sub_1B9E988D4()
{
  v2 = qword_1EBBE5FA8;
  if (!qword_1EBBE5FA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBE5FA0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBE5FA8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9E98988()
{
  v2 = qword_1EBBE5FB8;
  if (!qword_1EBBE5FB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBE5FA0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBE5FB8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B9E98A10(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5F90);
  if (!(*(*(v1 - 8) + 48))(a1, 1))
  {
    v2 = sub_1B9ED890C();
    (*(*(v2 - 8) + 8))(a1);
  }

  return a1;
}

uint64_t sub_1B9E98AC0(uint64_t a1)
{
  v3 = sub_1B9ED890C();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_1B9E98B68(uint64_t a1)
{
  v1 = sub_1B9ED890C();
  (*(*(v1 - 8) + 8))(a1);
  return a1;
}

__n128 sub_1B9E98BC4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B9ED890C();
  (*(*(v2 - 8) + 32))(a2, a1);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5F90);
  result = *(a1 + *(v3 + 28));
  *(a2 + *(v3 + 28)) = result;
  return result;
}

unint64_t sub_1B9E98C54()
{
  v2 = qword_1EBBE5FC0;
  if (!qword_1EBBE5FC0)
  {
    sub_1B9ED8FAC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBE5FC0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9E98CD4()
{
  v2 = qword_1EBBE5FC8;
  if (!qword_1EBBE5FC8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBE5FC8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9E98F18()
{
  v2 = qword_1EBBE6158;
  if (!qword_1EBBE6158)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBE6158);
    return WitnessTable;
  }

  return v2;
}

uint64_t SFRemoteAlertPresentationRequest.id.getter()
{
  v2 = *v0;

  return v2;
}

uint64_t SFRemoteAlertPresentationRequest.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t SFRemoteAlertPresentationRequest.viewControllerToPresent.getter()
{
  v2 = *(v0 + 24);
  MEMORY[0x1E69E5928]();
  return v2;
}

uint64_t SFRemoteAlertPresentationRequest.viewControllerToPresent.setter(uint64_t a1)
{
  MEMORY[0x1E69E5928]();
  v2 = *(v1 + 24);
  *(v1 + 24) = a1;
  MEMORY[0x1E69E5920](v2);
  return MEMORY[0x1E69E5920](a1);
}

uint64_t sub_1B9E9941C()
{
  v7 = sub_1B9ED847C();
  v4 = *(v7 - 8);
  v5 = v7 - 8;
  v3 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v6 = &v2 - v3;
  sub_1B9ED846C();
  v8 = sub_1B9ED845C();
  v9 = v0;
  (*(v4 + 8))(v6, v7);
  return v8;
}

uint64_t sub_1B9E994F4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>)
{
  v9 = *a3;
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = v9;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 33) = a6;
  *(a9 + 40) = a7;
  *(a9 + 48) = a8;
  return result;
}

uint64_t sub_1B9E9951C@<X0>(uint64_t *a1@<X8>)
{
  result = SFRemoteAlertPresentationRequest.id.getter();
  *a1 = result;
  a1[1] = v2;
  return result;
}

void *sub_1B9E9954C@<X0>(void *a1@<X8>)
{
  v5 = 0;
  swift_beginAccess();
  memcpy(__dst, (v1 + 16), 0x31uLL);
  sub_1B9E995D4(__dst, v4);
  swift_endAccess();
  return memcpy(a1, __dst, 0x31uLL);
}

uint64_t sub_1B9E995D4(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  v3 = *(a1 + 8);

  *(a2 + 8) = v3;
  *(a2 + 16) = *(a1 + 16);
  v4 = *(a1 + 24);
  MEMORY[0x1E69E5928]();
  result = a2;
  *(a2 + 24) = v4;
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 33) = *(a1 + 33);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 48) = *(a1 + 48);
  return result;
}

uint64_t sub_1B9E99668(void *__src)
{
  memcpy(__dst, __src, 0x31uLL);
  v6 = __src;
  v5 = v1;
  sub_1B9E995D4(__dst, v4);
  swift_beginAccess();
  memcpy(v8, (v1 + 16), 0x31uLL);
  memcpy((v1 + 16), __dst, 0x31uLL);
  sub_1B9E99728(v8);
  swift_endAccess();
  return sub_1B9E99728(__dst);
}

uint64_t sub_1B9E99728(uint64_t a1)
{

  MEMORY[0x1E69E5920](*(a1 + 24));
  return a1;
}

uint64_t sub_1B9E997CC()
{
  swift_beginAccess();
  v2 = *(v0 + 72);
  MEMORY[0x1E69E5928]();
  swift_endAccess();
  return v2;
}

uint64_t sub_1B9E99830(uint64_t a1)
{
  MEMORY[0x1E69E5928]();
  swift_beginAccess();
  v2 = *(v1 + 72);
  *(v1 + 72) = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  return MEMORY[0x1E69E5920](a1);
}

uint64_t sub_1B9E99924@<X0>(uint64_t (**a1)()@<X8>)
{

  v7 = sub_1B9E99B94();
  v8 = v1;
  if (v7)
  {
    v2 = swift_allocObject();
    *(v2 + 16) = v7;
    *(v2 + 24) = v8;
    v4 = sub_1B9EA01EC;
    v5 = v2;
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  *a1 = v4;
  a1[1] = v5;
}

uint64_t sub_1B9E99A50(uint64_t *a1)
{
  sub_1B9EA0168(a1, v7);
  v5 = v7[0];
  v6 = v7[1];
  if (v7[0])
  {
    v1 = swift_allocObject();
    *(v1 + 16) = v5;
    *(v1 + 24) = v6;
    v3 = sub_1B9EA01E0;
    v4 = v1;
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  sub_1B9E99C30(v3, v4);
}

uint64_t sub_1B9E99B94()
{
  swift_beginAccess();
  v2 = *(v0 + 80);
  sub_1B9E99BFC(v2);
  swift_endAccess();
  return v2;
}

uint64_t sub_1B9E99BFC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1B9E99C30(uint64_t a1, uint64_t a2)
{
  sub_1B9E99BFC(a1);
  swift_beginAccess();
  v3 = *(v2 + 80);
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  sub_1B9E99CC0(v3);
  swift_endAccess();
  return sub_1B9E99CC0(a1);
}

uint64_t sub_1B9E99CC0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1B9E99D58@<X0>(uint64_t (**a1)()@<X8>)
{

  v7 = sub_1B9E99F78();
  v8 = v1;
  if (v7)
  {
    v2 = swift_allocObject();
    *(v2 + 16) = v7;
    *(v2 + 24) = v8;
    v4 = sub_1B9EA01EC;
    v5 = v2;
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  *a1 = v4;
  a1[1] = v5;
}

uint64_t sub_1B9E99E5C(uint64_t *a1)
{
  sub_1B9EA0168(a1, v7);
  v5 = v7[0];
  v6 = v7[1];
  if (v7[0])
  {
    v1 = swift_allocObject();
    *(v1 + 16) = v5;
    *(v1 + 24) = v6;
    v3 = sub_1B9EA01E0;
    v4 = v1;
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  sub_1B9E99FE0(v3, v4);
}

uint64_t sub_1B9E99F78()
{
  swift_beginAccess();
  v2 = *(v0 + 96);
  sub_1B9E99BFC(v2);
  swift_endAccess();
  return v2;
}

uint64_t sub_1B9E99FE0(uint64_t a1, uint64_t a2)
{
  sub_1B9E99BFC(a1);
  swift_beginAccess();
  v3 = *(v2 + 96);
  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  sub_1B9E99CC0(v3);
  swift_endAccess();
  return sub_1B9E99CC0(a1);
}

uint64_t sub_1B9E9A0D4(unsigned int a1)
{
  v12 = a1 & 1;
  v11 = v1;
  swift_beginAccess();
  v9 = *(v1 + 112);
  swift_endAccess();
  result = a1;
  if ((a1 & 1) != (v9 & 1))
  {
    swift_beginAccess();
    v6 = *(v7 + 112);
    result = swift_endAccess();
    if (v6)
    {
      v10[0] = sub_1B9E99F78();
      v10[1] = v3;
      if (v10[0])
      {
        v5 = v10[0];

        v4 = sub_1B9E9A22C(v10);
        v5(v4);
      }

      else
      {
        sub_1B9E9A22C(v10);
      }

      return sub_1B9E99FE0(0, 0);
    }
  }

  return result;
}

void *sub_1B9E9A22C(void *a1)
{
  if (*a1)
  {
  }

  return a1;
}

uint64_t sub_1B9E9A26C()
{
  swift_beginAccess();
  v2 = *(v0 + 112);
  swift_endAccess();
  return v2 & 1;
}

uint64_t sub_1B9E9A2C8(char a1)
{
  swift_beginAccess();
  v4 = *(v1 + 112);
  swift_endAccess();
  swift_beginAccess();
  *(v1 + 112) = a1;
  swift_endAccess();
  return sub_1B9E9A0D4(v4 & 1);
}

void (*sub_1B9E9A36C(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[3] = v1;
  swift_beginAccess();
  v4 = *(v1 + 112);
  swift_endAccess();
  *(v3 + 32) = v4;
  return sub_1B9E9A418;
}

void sub_1B9E9A418(uint64_t a1)
{
  v1 = *a1;
  sub_1B9E9A2C8(*(*a1 + 32) & 1);
  free(v1);
}

uint64_t sub_1B9E9A484()
{
  swift_beginAccess();
  v2 = *(v0 + 113);
  swift_endAccess();
  return v2 & 1;
}

uint64_t sub_1B9E9A4E0(char a1)
{
  swift_beginAccess();
  *(v1 + 113) = a1;
  return swift_endAccess();
}

uint64_t sub_1B9E9A600(const void *a1, uint64_t a2)
{
  memcpy(__dst, a1, 0x31uLL);
  v10 = a1;
  v9 = a2;
  v8 = v2;
  *(v2 + 80) = 0;
  *(v2 + 88) = 0;
  *(v2 + 96) = 0;
  *(v2 + 104) = 0;
  *(v2 + 112) = 0;
  *(v2 + 113) = 0;
  sub_1B9E995D4(__dst, v7);
  memcpy((v2 + 16), __dst, 0x31uLL);
  MEMORY[0x1E69E5928](a2);
  *(v2 + 72) = a2;
  MEMORY[0x1E69E5920](a2);
  sub_1B9E99728(__dst);
  return v6;
}

uint64_t sub_1B9E9A6D4(unsigned int a1, uint64_t a2, uint64_t a3)
{
  v93 = a1;
  v92 = a2;
  v91 = a3;
  v106 = sub_1B9E9B724;
  v109 = sub_1B9E96AFC;
  v111 = sub_1B9E96AF4;
  v113 = sub_1B9E96AF4;
  v116 = sub_1B9E96B08;
  v84 = sub_1B9E9B724;
  v85 = sub_1B9E96AFC;
  v86 = sub_1B9E96AF4;
  v87 = sub_1B9E96AF4;
  v88 = sub_1B9E96B08;
  v89 = sub_1B9E9F210;
  v146 = 0;
  v144 = 0;
  v145 = 0;
  v143 = 0;
  v140 = 0;
  v90 = 0;
  v101 = sub_1B9ED85DC();
  v99 = *(v101 - 8);
  v100 = v101 - 8;
  v95 = v99[8];
  v94 = (v95 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v93);
  v96 = &v43 - v94;
  v97 = v94;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v5 = &v43 - v97;
  v98 = &v43 - v97;
  v146 = v4 & 1;
  v144 = v6;
  v145 = v7;
  v143 = v8;
  v9 = sub_1B9EA02C8();
  v102 = v99[2];
  v103 = v99 + 2;
  v102(v5, v9, v101);

  v10 = sub_1B9ED85BC();
  v11 = v104;
  v120 = v10;
  v121 = sub_1B9ED8DDC();
  v105 = 17;
  v108 = 7;
  v112 = swift_allocObject();
  *(v112 + 16) = 32;
  v114 = swift_allocObject();
  *(v114 + 16) = 8;
  v107 = 32;
  v12 = swift_allocObject();
  v110 = v12;
  *(v12 + 16) = v106;
  *(v12 + 24) = v11;
  v13 = swift_allocObject();
  v14 = v110;
  v117 = v13;
  *(v13 + 16) = v109;
  *(v13 + 24) = v14;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBE6160);
  v115 = sub_1B9ED914C();
  v118 = v15;

  v16 = v112;
  v17 = v118;
  *v118 = v111;
  v17[1] = v16;

  v18 = v114;
  v19 = v118;
  v118[2] = v113;
  v19[3] = v18;

  v20 = v117;
  v21 = v118;
  v118[4] = v116;
  v21[5] = v20;
  sub_1B9E8B398();

  if (os_log_type_enabled(v120, v121))
  {
    v22 = v90;
    v77 = sub_1B9ED8E8C();
    v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5D80);
    v78 = sub_1B9E945DC(0);
    v79 = sub_1B9E945DC(1);
    v80 = &v126;
    v126 = v77;
    v81 = &v125;
    v125 = v78;
    v82 = &v124;
    v124 = v79;
    sub_1B9E94630(2, &v126);
    sub_1B9E94630(1, v80);
    v122 = v111;
    v123 = v112;
    sub_1B9E94644(&v122, v80, v81, v82);
    v83 = v22;
    if (v22)
    {

      __break(1u);
    }

    else
    {
      v122 = v113;
      v123 = v114;
      sub_1B9E94644(&v122, &v126, &v125, &v124);
      v74 = 0;
      v122 = v116;
      v123 = v117;
      sub_1B9E94644(&v122, &v126, &v125, &v124);
      v73 = 0;
      _os_log_impl(&dword_1B9E4B000, v120, v121, "Received request to dismiss remote alert with ID: %s", v77, 0xCu);
      sub_1B9E94690(v78);
      sub_1B9E94690(v79);
      sub_1B9ED8E6C();

      v75 = v73;
    }
  }

  else
  {
    v23 = v90;

    v75 = v23;
  }

  v68 = v75;
  MEMORY[0x1E69E5920](v120);
  v69 = v99[1];
  v70 = v99 + 1;
  v69(v98, v101);
  v71 = v141;
  sub_1B9E9954C(v141);
  v72 = v142;
  MEMORY[0x1E69E5928]();
  sub_1B9E99728(v71);
  v140 = v72;
  v139 = [v72 presentingViewController];
  v67 = v139 != 0;
  v66 = v67;
  sub_1B9E9F1DC(&v139);
  if (v66)
  {
    if ((sub_1B9E9A484() & 1) == 0)
    {
      sub_1B9E9A4E0(1);
      sub_1B9E99BFC(v92);

      v24 = swift_allocObject();
      v25 = v91;
      v26 = v104;
      v27 = v89;
      v24[2] = v92;
      v24[3] = v25;
      v24[4] = v26;
      v132 = v27;
      v133 = v24;
      aBlock = MEMORY[0x1E69E9820];
      v128 = 1107296256;
      v129 = 0;
      v130 = sub_1B9E9B7E4;
      v131 = &block_descriptor;
      v65 = _Block_copy(&aBlock);

      [v72 dismissViewControllerAnimated:v93 & 1 completion:v65];
      _Block_release(v65);
    }

    return MEMORY[0x1E69E5920](v72);
  }

  else
  {
    v29 = v96;
    v30 = sub_1B9EA02C8();
    v102(v29, v30, v101);

    v63 = sub_1B9ED85BC();
    v64 = sub_1B9ED8DDC();
    v54 = 17;
    v56 = 7;
    v58 = swift_allocObject();
    *(v58 + 16) = 32;
    v59 = swift_allocObject();
    *(v59 + 16) = 8;
    v55 = 32;
    v31 = swift_allocObject();
    v32 = v104;
    v57 = v31;
    *(v31 + 16) = v84;
    *(v31 + 24) = v32;
    v33 = swift_allocObject();
    v34 = v57;
    v61 = v33;
    *(v33 + 16) = v85;
    *(v33 + 24) = v34;
    v60 = sub_1B9ED914C();
    v62 = v35;

    v36 = v58;
    v37 = v62;
    *v62 = v86;
    v37[1] = v36;

    v38 = v59;
    v39 = v62;
    v62[2] = v87;
    v39[3] = v38;

    v40 = v61;
    v41 = v62;
    v62[4] = v88;
    v41[5] = v40;
    sub_1B9E8B398();

    if (os_log_type_enabled(v63, v64))
    {
      v42 = v68;
      v47 = sub_1B9ED8E8C();
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5D80);
      v48 = sub_1B9E945DC(0);
      v49 = sub_1B9E945DC(1);
      v50 = &v138;
      v138 = v47;
      v51 = &v137;
      v137 = v48;
      v52 = &v136;
      v136 = v49;
      sub_1B9E94630(2, &v138);
      sub_1B9E94630(1, v50);
      v134 = v86;
      v135 = v58;
      sub_1B9E94644(&v134, v50, v51, v52);
      v53 = v42;
      if (v42)
      {

        __break(1u);
      }

      else
      {
        v134 = v87;
        v135 = v59;
        sub_1B9E94644(&v134, &v138, &v137, &v136);
        v45 = 0;
        v134 = v88;
        v135 = v61;
        sub_1B9E94644(&v134, &v138, &v137, &v136);
        _os_log_impl(&dword_1B9E4B000, v63, v64, "Invalidating handle for remote alert which is not yet presented with ID: %s", v47, 0xCu);
        sub_1B9E94690(v48);
        sub_1B9E94690(v49);
        sub_1B9ED8E6C();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v63);
    v69(v96, v101);
    v44 = sub_1B9E997CC();
    [v44 invalidate];
    MEMORY[0x1E69E5920](v44);
    return MEMORY[0x1E69E5920](v72);
  }
}

uint64_t sub_1B9E9B6B4()
{
  sub_1B9E9954C(v2);
  memcpy(__dst, v2, 0x31uLL);
  v1 = __dst[0];

  sub_1B9E99728(__dst);
  return v1;
}

uint64_t sub_1B9E9B72C(void (*a1)(void))
{
  sub_1B9E99BFC(a1);
  if (a1)
  {
    a1();
  }

  v2 = sub_1B9E997CC();
  [v2 invalidate];
  return MEMORY[0x1E69E5920](v2);
}

uint64_t sub_1B9E9B7E4(uint64_t a1)
{
  v3 = *(a1 + 32);

  v3(v1);
}

uint64_t SFRemoteAlertPresentationHandle.deinit()
{
  sub_1B9E99728((v0 + 2));
  MEMORY[0x1E69E5920](v0[9]);
  sub_1B9E9A22C(v0 + 10);
  sub_1B9E9A22C(v0 + 12);
  return v2;
}

uint64_t sub_1B9E9B8CC()
{
  sub_1B9E9B924();
  MEMORY[0x1E69E5928]();
  return swift_dynamicCastClassUnconditional();
}

uint64_t *sub_1B9E9B924()
{
  if (qword_1EBBE5CF0 != -1)
  {
    swift_once();
  }

  return &qword_1EBBE6150;
}

uint64_t sub_1B9E9B984()
{
  v2 = (v0 + OBJC_IVAR____TtC9SharingUI32SFRemoteAlertPresentationManager_remoteAlertPresentationHandlesByID);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_1B9E9B9EC(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC9SharingUI32SFRemoteAlertPresentationManager_remoteAlertPresentationHandlesByID);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_1B9E9BADC(uint64_t a1)
{
  v124 = a1;
  v121 = 0;
  v191 = 0;
  v122 = 0;
  v184 = 0;
  v183 = 0;
  v182 = 0;
  v178 = 0;
  v174 = 0;
  v172 = 0;
  v133 = sub_1B9ED85DC();
  v125 = v133;
  v126 = *(v133 - 8);
  v132 = v126;
  v127 = v126;
  v128 = *(v126 + 64);
  v1 = MEMORY[0x1EEE9AC00](v124);
  v130 = (v128 + 15) & 0xFFFFFFFFFFFFFFF0;
  v129 = v52 - v130;
  v2 = MEMORY[0x1EEE9AC00](v1);
  v3 = v52 - v130;
  v131 = v52 - v130;
  v4 = *v2;
  v5 = *(v2 + 16);
  v6 = *(v2 + 32);
  v195 = *(v2 + 48);
  v194 = v6;
  v193 = v5;
  v192 = v4;
  v191 = v7;
  v8 = sub_1B9EA02C8();
  v134 = *(v132 + 16);
  v135 = (v132 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v134(v3, v8, v133);
  v136 = &v192;
  sub_1B9E995D4(&v192, v190);
  v137 = 65;
  v151 = 7;
  v9 = swift_allocObject();
  v10 = v136;
  v143 = v9;
  v11 = v192;
  v12 = v193;
  v13 = v194;
  *(v9 + 64) = v195;
  *(v9 + 48) = v13;
  *(v9 + 32) = v12;
  *(v9 + 16) = v11;
  sub_1B9E995D4(v10, v189);
  v14 = swift_allocObject();
  v152 = v14;
  v15 = v192;
  v16 = v193;
  v17 = v194;
  *(v14 + 64) = v195;
  *(v14 + 48) = v17;
  *(v14 + 32) = v16;
  *(v14 + 16) = v15;
  v166 = sub_1B9ED85BC();
  v138 = v166;
  v165 = sub_1B9ED8DDC();
  v139 = v165;
  v146 = 17;
  v156 = swift_allocObject();
  v140 = v156;
  v141 = 32;
  *(v156 + 16) = 32;
  v18 = swift_allocObject();
  v19 = v141;
  v157 = v18;
  v142 = v18;
  v148 = 8;
  *(v18 + 16) = 8;
  v150 = v19;
  v20 = swift_allocObject();
  v21 = v143;
  v144 = v20;
  *(v20 + 16) = sub_1B9E9F284;
  *(v20 + 24) = v21;
  v22 = swift_allocObject();
  v23 = v144;
  v158 = v22;
  v145 = v22;
  *(v22 + 16) = sub_1B9E96AFC;
  *(v22 + 24) = v23;
  v159 = swift_allocObject();
  v147 = v159;
  *(v159 + 16) = 64;
  v160 = swift_allocObject();
  v149 = v160;
  *(v160 + 16) = v148;
  v24 = swift_allocObject();
  v25 = v152;
  v153 = v24;
  *(v24 + 16) = sub_1B9E9F28C;
  *(v24 + 24) = v25;
  v26 = swift_allocObject();
  v27 = v153;
  v163 = v26;
  v154 = v26;
  *(v26 + 16) = sub_1B9E9F2BC;
  *(v26 + 24) = v27;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBE6160);
  v155 = v164;
  v161 = sub_1B9ED914C();
  v162 = v28;

  v29 = v156;
  v30 = v162;
  *v162 = sub_1B9E96AF4;
  v30[1] = v29;

  v31 = v157;
  v32 = v162;
  v162[2] = sub_1B9E96AF4;
  v32[3] = v31;

  v33 = v158;
  v34 = v162;
  v162[4] = sub_1B9E96B08;
  v34[5] = v33;

  v35 = v159;
  v36 = v162;
  v162[6] = sub_1B9E96AF4;
  v36[7] = v35;

  v37 = v160;
  v38 = v162;
  v162[8] = sub_1B9E96AF4;
  v38[9] = v37;

  v39 = v162;
  v40 = v163;
  v162[10] = sub_1B9E9F44C;
  v39[11] = v40;
  sub_1B9E8B398();

  if (os_log_type_enabled(v166, v165))
  {
    v41 = v122;
    v114 = sub_1B9ED8E8C();
    v110 = v114;
    v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5D80);
    v112 = 1;
    v115 = sub_1B9E945DC(1);
    v113 = v115;
    v116 = sub_1B9E945DC(v112);
    v171 = v114;
    v170 = v115;
    v169 = v116;
    v117 = 2;
    v118 = &v171;
    sub_1B9E94630(2, &v171);
    sub_1B9E94630(v117, v118);
    v167 = sub_1B9E96AF4;
    v168 = v140;
    sub_1B9E94644(&v167, v118, &v170, &v169);
    v119 = v41;
    v120 = v41;
    if (v41)
    {
      v108 = 0;

      __break(1u);
    }

    else
    {
      v167 = sub_1B9E96AF4;
      v168 = v142;
      sub_1B9E94644(&v167, &v171, &v170, &v169);
      v106 = 0;
      v107 = 0;
      v167 = sub_1B9E96B08;
      v168 = v145;
      sub_1B9E94644(&v167, &v171, &v170, &v169);
      v104 = 0;
      v105 = 0;
      v167 = sub_1B9E96AF4;
      v168 = v147;
      sub_1B9E94644(&v167, &v171, &v170, &v169);
      v102 = 0;
      v103 = 0;
      v167 = sub_1B9E96AF4;
      v168 = v149;
      sub_1B9E94644(&v167, &v171, &v170, &v169);
      v100 = 0;
      v101 = 0;
      v167 = sub_1B9E9F44C;
      v168 = v154;
      sub_1B9E94644(&v167, &v171, &v170, &v169);
      v98 = 0;
      v99 = 0;
      _os_log_impl(&dword_1B9E4B000, v138, v139, "Asked to present remote alert using request: %s view controller to present: %@", v110, 0x16u);
      v97 = 1;
      sub_1B9E94690(v113);
      sub_1B9E94690(v116);
      sub_1B9ED8E6C();

      v109 = v98;
    }
  }

  else
  {
    v42 = v122;

    v109 = v42;
  }

  v93 = v109;

  v94 = *(v127 + 8);
  v95 = (v127 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v94(v131, v125);
  v96 = [objc_opt_self() identityOfCurrentProcess];
  if (v96)
  {
    v92 = v96;
    v79 = v96;
    v184 = v96;
    v89 = 0;
    sub_1B9E9F458();
    v43 = v79;
    v80 = v192;

    v82 = sub_1B9E9CA04(v79, v80, *(&v80 + 1));
    v81 = v82;
    v183 = v82;
    v84 = [objc_opt_self() newHandleWithDefinition:v82 configurationContext:v89];
    v83 = v84;
    v182 = v84;
    type metadata accessor for SFRemoteAlertPresentationHandle();
    sub_1B9E995D4(&v192, &v181);
    v180 = v195;
    v179[2] = v194;
    v179[1] = v193;
    v179[0] = v192;
    v44 = v84;
    v86 = sub_1B9E9A5AC(v179, v84);
    v85 = v86;
    v178 = v86;
    v197 = v192;
    sub_1B9E9F4E4(&v197, &v177);

    v176 = v86;
    v175[2] = v197;
    v87 = v175;
    v88 = sub_1B9E9BA70();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE6180);
    sub_1B9ED8A2C();
    (v88)(v87, 0);
    sub_1B9E9F524();
    v90 = sub_1B9E9CA54();
    v174 = v90;
    v196 = *(&v194 + 1);
    [v90 setInitialSupportedInterfaceOrientations_];
    v45 = v123;
    v173 = &unk_1F38267A0;
    v91 = swift_dynamicCastObjCProtocolConditional();
    if (v91)
    {
      v78 = v91;
    }

    else
    {

      v78 = 0;
    }

    v77 = v78;
    if (v78)
    {
      v76 = v77;
      v75 = v77;
      v172 = v77;
      [v83 registerObserver_];
      swift_unknownObjectRelease();
    }

    v46 = v90;
    [v83 activateWithContext_];

    v72 = v85;
    v73 = v72;
    v74 = v93;
  }

  else
  {
    v47 = v129;
    v48 = sub_1B9EA02C8();
    v134(v47, v48, v125);
    v70 = sub_1B9ED85BC();
    v67 = v70;
    v69 = sub_1B9ED8DCC();
    v68 = v69;
    v71 = sub_1B9ED914C();
    if (os_log_type_enabled(v70, v69))
    {
      v49 = v93;
      v58 = sub_1B9ED8E8C();
      v54 = v58;
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5D80);
      v56 = 0;
      v59 = sub_1B9E945DC(0);
      v57 = v59;
      v60 = sub_1B9E945DC(v56);
      v188 = v58;
      v187 = v59;
      v186 = v60;
      v61 = 0;
      v62 = &v188;
      sub_1B9E94630(0, &v188);
      sub_1B9E94630(v61, v62);
      v185 = v71;
      v63 = v52;
      MEMORY[0x1EEE9AC00](v52);
      v64 = &v52[-6];
      v52[-4] = v50;
      v52[-3] = &v187;
      v52[-2] = &v186;
      v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBE6320);
      sub_1B9E96D38();
      sub_1B9ED8BDC();
      v66 = v49;
      if (v49)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1B9E4B000, v67, v68, "Failed to get process identity of the current process, dropping request to present view controller", v54, 2u);
        v52[1] = 0;
        sub_1B9E94690(v57);
        sub_1B9E94690(v60);
        sub_1B9ED8E6C();

        v53 = v66;
      }
    }

    else
    {

      v53 = v93;
    }

    v52[0] = v53;

    v94(v129, v125);
    v73 = 0;
    v74 = v52[0];
  }

  return v73;
}

uint64_t sub_1B9E9C998(uint64_t *a1)
{
  v2 = *a1;

  return v2;
}

uint64_t sub_1B9E9C9D0(uint64_t a1)
{
  v2 = *(a1 + 24);
  MEMORY[0x1E69E5928]();
  return v2;
}

uint64_t sub_1B9E9CA84(uint64_t a1, char a2, char a3, uint64_t a4, char a5, char *a6)
{
  v21 = 0;
  v20 = 0;
  v26 = a1;
  v25 = a2 & 1;
  v24 = a3 & 1;
  v23 = a4;
  v22 = a5 & 1;
  v7 = *a6;
  v21 = *a6 & 1;
  v20 = v6;
  v18 = v7;
  MEMORY[0x1E69E5928](a1);
  v8 = sub_1B9E9941C();
  sub_1B9E994F4(v8, v9, &v18, a1, a2 & 1, a3 & 1, a4, a5 & 1, v19);
  memcpy(__dst, v19, 0x31uLL);
  memcpy(v17, __dst, 0x31uLL);
  v16 = sub_1B9E9BADC(v17);
  sub_1B9E99728(__dst);
  return v16;
}

uint64_t sub_1B9E9CBBC(uint64_t a1, char a2, char a3, uint64_t a4, char a5, char *a6, uint64_t a7, uint64_t a8)
{
  v18 = 0;
  v16 = 0;
  v17 = 0;
  v15 = 0;
  v23 = a1;
  v22 = a2 & 1;
  v21 = a3 & 1;
  v20 = a4;
  v19 = a5 & 1;
  v9 = *a6;
  v18 = *a6 & 1;
  v16 = a7;
  v17 = a8;
  v15 = v8;
  v14 = v9;
  v13 = sub_1B9E9CA84(a1, a2 & 1, a3 & 1, a4, a5 & 1, &v14);

  if (v13)
  {
    sub_1B9E99BFC(a7);
    sub_1B9E99FE0(a7, a8);
  }
}

uint64_t sub_1B9E9CCD8()
{

  sub_1B9E9B984();
  type metadata accessor for SFRemoteAlertPresentationHandle();
  sub_1B9ED8A1C();
  sub_1B9E96F0C();

  return v1;
}

uint64_t sub_1B9E9CD94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18 = a1;
  v19 = a2;
  v17 = v3;

  sub_1B9E9B984();
  v16[7] = a1;
  v16[8] = a2;
  type metadata accessor for SFRemoteAlertPresentationHandle();
  sub_1B9ED8A1C();
  sub_1B9E96F0C();
  if (v16[9])
  {

    sub_1B9E93A50();
    sub_1B9E9954C(v14);
    memcpy(__dst, v14, sizeof(__dst));

    memcpy(v16, __dst, 0x31uLL);
    v4 = v16[1];
    v5 = v16[2];
    v6 = v16[3];
    v7 = v16[4];
    v8 = v16[5];
    v9 = v16[6];
    *a3 = v16[0];
    *(a3 + 8) = v4;
    *(a3 + 16) = v5;
    *(a3 + 24) = v6;
    *(a3 + 32) = v7;
    *(a3 + 40) = v8;
    *(a3 + 48) = v9;
  }

  else
  {
    sub_1B9E93A50();

    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    *(a3 + 32) = 0;
    *(a3 + 40) = 0;
    *(a3 + 48) = 0;
  }

  return result;
}

id SFRemoteAlertPresentationManager.init()()
{
  v4 = 0;
  v1 = OBJC_IVAR____TtC9SharingUI32SFRemoteAlertPresentationManager_remoteAlertPresentationHandlesByID;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE61F0);
  sub_1B9ED914C();
  type metadata accessor for SFRemoteAlertPresentationHandle();
  *v1 = sub_1B9ED89FC();
  v3.receiver = v4;
  v3.super_class = type metadata accessor for SFRemoteAlertPresentationManager();
  v2 = objc_msgSendSuper2(&v3, sel_init);
  MEMORY[0x1E69E5928](v2);
  v4 = v2;
  MEMORY[0x1E69E5920](v2);
  return v2;
}

id SFRemoteAlertPresentationManager.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SFRemoteAlertPresentationManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B9E9D0F0(uint64_t a1)
{
  sub_1B9E9B984();
  type metadata accessor for SFRemoteAlertPresentationHandle();
  sub_1B9ED8A0C();
  MEMORY[0x1E69E5928](a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE61F8);
  sub_1B9E9F5DC();
  sub_1B9ED8BBC();
  MEMORY[0x1E69E5920](a1);
  sub_1B9E9895C();

  return v3;
}

uint64_t sub_1B9E9D218()
{
  sub_1B9EA01F8();
  v1 = sub_1B9E997CC();
  v2 = sub_1B9ED8E4C();
  MEMORY[0x1E69E5920](v1);
  return v2 & 1;
}

uint64_t SFRemoteAlertPresentationManager.remoteAlertHandleDidActivate(_:)(uint64_t a1)
{
  v61 = a1;
  v50 = sub_1B9E9B724;
  v51 = sub_1B9E96AFC;
  v52 = sub_1B9E96AF4;
  v53 = sub_1B9E96AF4;
  v54 = sub_1B9E96B08;
  v73 = 0;
  v72 = 0;
  v71 = 0;
  v70 = 0;
  v68 = 0;
  v69 = 0;
  v55 = 0;
  v56 = sub_1B9ED85DC();
  v57 = *(v56 - 8);
  v58 = v56 - 8;
  v59 = (*(v57 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v60 = v19 - v59;
  v73 = MEMORY[0x1EEE9AC00](v61);
  v72 = v1;
  swift_unknownObjectRetain();
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  v62 = result;
  if (result)
  {
    v49 = v62;
  }

  else
  {
    result = swift_unknownObjectRelease();
    v49 = 0;
  }

  v48 = v49;
  if (v49)
  {
    v47 = v48;
    v45 = v48;
    v71 = v48;
    v46 = sub_1B9E9D0F0(v48);
    if (v46)
    {
      v44 = v46;
      v3 = v60;
      v32 = v46;
      v70 = v46;
      v4 = sub_1B9EA02C8();
      (*(v57 + 16))(v3, v4, v56);

      v42 = sub_1B9ED85BC();
      v43 = sub_1B9ED8DDC();
      v31 = 17;
      v34 = 7;
      v36 = swift_allocObject();
      *(v36 + 16) = 32;
      v37 = swift_allocObject();
      *(v37 + 16) = 8;
      v33 = 32;
      v5 = swift_allocObject();
      v6 = v32;
      v35 = v5;
      *(v5 + 16) = v50;
      *(v5 + 24) = v6;
      v7 = swift_allocObject();
      v8 = v35;
      v39 = v7;
      *(v7 + 16) = v51;
      *(v7 + 24) = v8;
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBE6160);
      v38 = sub_1B9ED914C();
      v40 = v9;

      v10 = v36;
      v11 = v40;
      *v40 = v52;
      v11[1] = v10;

      v12 = v37;
      v13 = v40;
      v40[2] = v53;
      v13[3] = v12;

      v14 = v39;
      v15 = v40;
      v40[4] = v54;
      v15[5] = v14;
      sub_1B9E8B398();

      if (os_log_type_enabled(v42, v43))
      {
        v16 = v55;
        v24 = sub_1B9ED8E8C();
        v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5D80);
        v25 = sub_1B9E945DC(0);
        v26 = sub_1B9E945DC(1);
        v27 = &v67;
        v67 = v24;
        v28 = &v66;
        v66 = v25;
        v29 = &v65;
        v65 = v26;
        sub_1B9E94630(2, &v67);
        sub_1B9E94630(1, v27);
        v63 = v52;
        v64 = v36;
        sub_1B9E94644(&v63, v27, v28, v29);
        v30 = v16;
        if (v16)
        {

          __break(1u);
        }

        else
        {
          v63 = v53;
          v64 = v37;
          sub_1B9E94644(&v63, &v67, &v66, &v65);
          v22 = 0;
          v63 = v54;
          v64 = v39;
          sub_1B9E94644(&v63, &v67, &v66, &v65);
          _os_log_impl(&dword_1B9E4B000, v42, v43, "SFRemoteAlertPresentationManager did activate alert for request: %s", v24, 0xCu);
          sub_1B9E94690(v25);
          sub_1B9E94690(v26);
          sub_1B9ED8E6C();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v42);
      (*(v57 + 8))(v60, v56);
      v20 = sub_1B9E99B94();
      v21 = v17;
      if (v20)
      {
        v19[2] = v20;
        v19[3] = v21;
        v19[1] = v21;
        v19[0] = v20;
        v68 = v20;
        v69 = v21;

        (v19[0])(v18);
      }

      return MEMORY[0x1E69E5920](v45);
    }

    else
    {
      return MEMORY[0x1E69E5920](v45);
    }
  }

  return result;
}

uint64_t SFRemoteAlertPresentationManager.remoteAlertHandleDidDeactivate(_:)(uint64_t a1)
{
  v55 = a1;
  v44 = sub_1B9E9B724;
  v45 = sub_1B9E96AFC;
  v46 = sub_1B9E96AF4;
  v47 = sub_1B9E96AF4;
  v48 = sub_1B9E96B08;
  v65 = 0;
  v64 = 0;
  v63 = 0;
  v62 = 0;
  v49 = 0;
  v50 = sub_1B9ED85DC();
  v51 = *(v50 - 8);
  v52 = v50 - 8;
  v53 = (*(v51 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v54 = v17 - v53;
  v65 = MEMORY[0x1EEE9AC00](v55);
  v64 = v1;
  swift_unknownObjectRetain();
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  v56 = result;
  if (result)
  {
    v43 = v56;
  }

  else
  {
    result = swift_unknownObjectRelease();
    v43 = 0;
  }

  v42 = v43;
  if (v43)
  {
    v41 = v42;
    v39 = v42;
    v63 = v42;
    v40 = sub_1B9E9D0F0(v42);
    if (v40)
    {
      v38 = v40;
      v3 = v54;
      v26 = v40;
      v62 = v40;
      v4 = sub_1B9EA02C8();
      (*(v51 + 16))(v3, v4, v50);

      v36 = sub_1B9ED85BC();
      v37 = sub_1B9ED8DDC();
      v25 = 17;
      v28 = 7;
      v30 = swift_allocObject();
      *(v30 + 16) = 32;
      v31 = swift_allocObject();
      *(v31 + 16) = 8;
      v27 = 32;
      v5 = swift_allocObject();
      v6 = v26;
      v29 = v5;
      *(v5 + 16) = v44;
      *(v5 + 24) = v6;
      v7 = swift_allocObject();
      v8 = v29;
      v33 = v7;
      *(v7 + 16) = v45;
      *(v7 + 24) = v8;
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBE6160);
      v32 = sub_1B9ED914C();
      v34 = v9;

      v10 = v30;
      v11 = v34;
      *v34 = v46;
      v11[1] = v10;

      v12 = v31;
      v13 = v34;
      v34[2] = v47;
      v13[3] = v12;

      v14 = v33;
      v15 = v34;
      v34[4] = v48;
      v15[5] = v14;
      sub_1B9E8B398();

      if (os_log_type_enabled(v36, v37))
      {
        v16 = v49;
        v18 = sub_1B9ED8E8C();
        v17[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5D80);
        v19 = sub_1B9E945DC(0);
        v20 = sub_1B9E945DC(1);
        v21 = &v61;
        v61 = v18;
        v22 = &v60;
        v60 = v19;
        v23 = &v59;
        v59 = v20;
        sub_1B9E94630(2, &v61);
        sub_1B9E94630(1, v21);
        v57 = v46;
        v58 = v30;
        sub_1B9E94644(&v57, v21, v22, v23);
        v24 = v16;
        if (v16)
        {

          __break(1u);
        }

        else
        {
          v57 = v47;
          v58 = v31;
          sub_1B9E94644(&v57, &v61, &v60, &v59);
          v17[0] = 0;
          v57 = v48;
          v58 = v33;
          sub_1B9E94644(&v57, &v61, &v60, &v59);
          _os_log_impl(&dword_1B9E4B000, v36, v37, "SFRemoteAlertPresentationManager did deactivate for request: %s", v18, 0xCu);
          sub_1B9E94690(v19);
          sub_1B9E94690(v20);
          sub_1B9ED8E6C();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v36);
      (*(v51 + 8))(v54, v50);
      [v39 invalidate];

      return MEMORY[0x1E69E5920](v39);
    }

    else
    {
      return MEMORY[0x1E69E5920](v39);
    }
  }

  return result;
}

uint64_t SFRemoteAlertPresentationManager.remoteAlertHandle(_:didInvalidateWithError:)(uint64_t a1, void *a2)
{
  v97 = a1;
  v91 = a2;
  v80 = sub_1B9E9B724;
  v81 = sub_1B9E96AFC;
  v82 = sub_1B9E9F664;
  v83 = sub_1B9E9F66C;
  v84 = sub_1B9E96AF4;
  v85 = sub_1B9E96AF4;
  v86 = sub_1B9E96B08;
  v87 = sub_1B9E96AF4;
  v88 = sub_1B9E96AF4;
  v89 = sub_1B9E9F44C;
  v113 = 0;
  v112 = 0;
  v111 = 0;
  v110 = 0;
  v109 = 0;
  v90 = 0;
  v92 = sub_1B9ED85DC();
  v93 = *(v92 - 8);
  v94 = v92 - 8;
  v95 = (*(v93 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v96 = &v30 - v95;
  v113 = MEMORY[0x1EEE9AC00](v97);
  v112 = v3;
  v111 = v2;
  swift_unknownObjectRetain();
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  v98 = result;
  if (result)
  {
    v79 = v98;
  }

  else
  {
    result = swift_unknownObjectRelease();
    v79 = 0;
  }

  v78 = v79;
  if (v79)
  {
    v77 = v78;
    v75 = v78;
    v110 = v78;
    v76 = sub_1B9E9D0F0(v78);
    if (v76)
    {
      v74 = v76;
      v5 = v96;
      v55 = v76;
      v109 = v76;
      v6 = sub_1B9EA02C8();
      (*(v93 + 16))(v5, v6, v92);

      v7 = v91;
      v60 = 7;
      v61 = swift_allocObject();
      *(v61 + 16) = v91;
      sub_1B9E9EF40();

      v72 = sub_1B9ED85BC();
      v73 = sub_1B9ED8DDC();
      v57 = 17;
      v63 = swift_allocObject();
      *(v63 + 16) = 32;
      v64 = swift_allocObject();
      v58 = 8;
      *(v64 + 16) = 8;
      v59 = 32;
      v8 = swift_allocObject();
      v9 = v55;
      v56 = v8;
      *(v8 + 16) = v80;
      *(v8 + 24) = v9;
      v10 = swift_allocObject();
      v11 = v56;
      v65 = v10;
      *(v10 + 16) = v81;
      *(v10 + 24) = v11;
      v66 = swift_allocObject();
      *(v66 + 16) = 64;
      v67 = swift_allocObject();
      *(v67 + 16) = v58;
      v12 = swift_allocObject();
      v13 = v61;
      v62 = v12;
      *(v12 + 16) = v82;
      *(v12 + 24) = v13;
      v14 = swift_allocObject();
      v15 = v62;
      v69 = v14;
      *(v14 + 16) = v83;
      *(v14 + 24) = v15;
      v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBE6160);
      v68 = sub_1B9ED914C();
      v70 = v16;

      v17 = v63;
      v18 = v70;
      *v70 = v84;
      v18[1] = v17;

      v19 = v64;
      v20 = v70;
      v70[2] = v85;
      v20[3] = v19;

      v21 = v65;
      v22 = v70;
      v70[4] = v86;
      v22[5] = v21;

      v23 = v66;
      v24 = v70;
      v70[6] = v87;
      v24[7] = v23;

      v25 = v67;
      v26 = v70;
      v70[8] = v88;
      v26[9] = v25;

      v27 = v69;
      v28 = v70;
      v70[10] = v89;
      v28[11] = v27;
      sub_1B9E8B398();

      if (os_log_type_enabled(v72, v73))
      {
        v29 = v90;
        v47 = sub_1B9ED8E8C();
        v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5D80);
        v46 = 1;
        v48 = sub_1B9E945DC(1);
        v49 = sub_1B9E945DC(v46);
        v51 = &v103;
        v103 = v47;
        v52 = &v102;
        v102 = v48;
        v53 = &v101;
        v101 = v49;
        v50 = 2;
        sub_1B9E94630(2, &v103);
        sub_1B9E94630(v50, v51);
        v99 = v84;
        v100 = v63;
        sub_1B9E94644(&v99, v51, v52, v53);
        v54 = v29;
        if (v29)
        {

          __break(1u);
        }

        else
        {
          v99 = v85;
          v100 = v64;
          sub_1B9E94644(&v99, &v103, &v102, &v101);
          v44 = 0;
          v99 = v86;
          v100 = v65;
          sub_1B9E94644(&v99, &v103, &v102, &v101);
          v43 = 0;
          v99 = v87;
          v100 = v66;
          sub_1B9E94644(&v99, &v103, &v102, &v101);
          v42 = 0;
          v99 = v88;
          v100 = v67;
          sub_1B9E94644(&v99, &v103, &v102, &v101);
          v41 = 0;
          v99 = v89;
          v100 = v69;
          sub_1B9E94644(&v99, &v103, &v102, &v101);
          _os_log_impl(&dword_1B9E4B000, v72, v73, "SFRemoteAlertPresentationManager did invalidate for request: %s with error: %@", v47, 0x16u);
          v40 = 1;
          sub_1B9E94690(v48);
          sub_1B9E94690(v49);
          sub_1B9ED8E6C();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v72);
      (*(v93 + 8))(v96, v92);
      v31 = v107;
      sub_1B9E9954C(v107);
      v38 = __dst;
      memcpy(__dst, v31, 0x31uLL);
      v32 = __dst[0];
      v33 = __dst[1];

      v35 = &v106;
      v106 = 0;
      v34 = v105;
      v105[0] = v32;
      v105[1] = v33;
      v36 = &v104;
      v37 = sub_1B9E9BA70();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE6180);
      sub_1B9ED8A2C();
      v39 = 1;
      v37();
      sub_1B9E99728(v38);
      sub_1B9E9A2C8(v39 & 1);

      return MEMORY[0x1E69E5920](v75);
    }

    else
    {
      return MEMORY[0x1E69E5920](v75);
    }
  }

  return result;
}

id sub_1B9E9EF6C()
{
  type metadata accessor for SFRemoteAlertPresentationManager();
  result = SFRemoteAlertPresentationManager.__allocating_init()();
  qword_1EBBE6150 = result;
  return result;
}

uint64_t sub_1B9E9EFA0()
{
  v0 = sub_1B9E9B924();
  v2 = *v0;
  MEMORY[0x1E69E5928](*v0);
  return v2;
}

id sub_1B9E9EFD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = sub_1B9ED8A9C();

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v4 = [v8 initWithSceneProvidingProcess:a1 configurationIdentifier:?];
  MEMORY[0x1E69E5920](v6);
  MEMORY[0x1E69E5920](a1);
  return v4;
}

uint64_t sub_1B9E9F0C4(uint64_t (*a1)(void))
{
  v3 = a1();
  if (v3)
  {
    v1 = v3;
    v4 = v3;
    sub_1B9E9F17C(&v4, &v5);
  }

  else
  {

    return 0;
  }

  return v5;
}

uint64_t sub_1B9E9F17C@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v5 = _swift_stdlib_bridgeErrorToNSError();
  MEMORY[0x1E69E5928](v5);
  *a2 = v5;
  return swift_unknownObjectRelease();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_1B9E9F2C8(uint64_t *a1, uint64_t **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v9 = a4();
  v8 = *a1;
  MEMORY[0x1E69E5928](v9);
  sub_1B9ED8EBC();
  if (v9)
  {
    MEMORY[0x1E69E5920](v9);
  }

  *a1 = v8 + 8;
  v5 = *a2;
  if (!*a2)
  {
    return MEMORY[0x1E69E5920](v9);
  }

  MEMORY[0x1E69E5928](v9);
  *v5 = v9;
  result = MEMORY[0x1E69E5920](v9);
  *a2 = v5 + 1;
  return result;
}

unint64_t sub_1B9E9F458()
{
  v2 = qword_1EBBE6178;
  if (!qword_1EBBE6178)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EBBE6178);
    return ObjCClassMetadata;
  }

  return v2;
}

void *sub_1B9E9F4E4(void *a1, void *a2)
{
  *a2 = *a1;
  v4 = a1[1];

  result = a2;
  a2[1] = v4;
  return result;
}

unint64_t sub_1B9E9F524()
{
  v2 = qword_1EBBE6188;
  if (!qword_1EBBE6188)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EBBE6188);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1B9E9F5DC()
{
  v2 = qword_1EBBE6200;
  if (!qword_1EBBE6200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBE61F8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBE6200);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9E9F690()
{
  v2 = qword_1EBBE6208;
  if (!qword_1EBBE6208)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBE6208);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B9E9F748(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 49))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*(a1 + 8)))
      {
        v3 = *(a1 + 8);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B9E9F860(uint64_t result, int a2, int a3)
{
  v3 = (result + 49);
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 32) = 0;
    *(result + 24) = 0;
    *(result + 16) = 0;
    *(result + 8) = 0;
    *result = a2 + 0x80000000;
    *(result + 48) = 0;
    if (a3 < 0)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 < 0)
    {
      *v3 = 0;
    }

    if (a2)
    {
      *(result + 8) = (a2 - 1);
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SFRemoteAlertPresentationRequest.PresentationType(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFE)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 1) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 254;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 2;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SFRemoteAlertPresentationRequest.PresentationType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFE)
  {
    v5 = ((a3 + 1) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFE)
  {
    v4 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_1B9EA0168(uint64_t *a1, void *a2)
{
  if (*a1)
  {
    v3 = *a1;
    v4 = a1[1];

    *a2 = v3;
    a2[1] = v4;
  }

  else
  {
    *a2 = *a1;
  }

  return a2;
}

unint64_t sub_1B9EA01F8()
{
  v2 = qword_1EBBE6218;
  if (!qword_1EBBE6218)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EBBE6218);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1B9EA025C()
{
  if (qword_1EBBE5D00 != -1)
  {
    swift_once();
  }

  v0 = sub_1B9ED85DC();
  return __swift_project_value_buffer(v0, qword_1EBBE7AB8);
}

uint64_t sub_1B9EA02C8()
{
  if (qword_1EBBE5CF8 != -1)
  {
    swift_once();
  }

  v0 = sub_1B9ED85DC();
  return __swift_project_value_buffer(v0, qword_1EBBE7AA0);
}

uint64_t sub_1B9EA0334()
{
  v1 = sub_1B9ED85DC();
  __swift_allocate_value_buffer(v1, qword_1EBBE7AA0);
  __swift_project_value_buffer(v1, qword_1EBBE7AA0);
  sub_1B9ED8B1C();
  sub_1B9ED8B1C();
  return sub_1B9ED85CC();
}

uint64_t sub_1B9EA03D8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B9EA02C8();
  v1 = sub_1B9ED85DC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1B9EA043C()
{
  v1 = sub_1B9ED85DC();
  __swift_allocate_value_buffer(v1, qword_1EBBE7AB8);
  __swift_project_value_buffer(v1, qword_1EBBE7AB8);
  sub_1B9ED8B1C();
  sub_1B9ED8B1C();
  return sub_1B9ED85CC();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    return *a2;
  }

  return v3;
}

uint64_t __swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v5 = a2;
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v2 = swift_slowAlloc();
    *a2 = v2;
    return v2;
  }

  return v5;
}

uint64_t sub_1B9EA05D4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B9EA025C();
  v1 = sub_1B9ED85DC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

id SFUIShareSheetPopoverBackgroundView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v25 = a1;
  v26 = a2;
  v27 = a3;
  v28 = a4;
  v55 = 0;
  v53 = 0u;
  v54 = 0u;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE6220);
  v20 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v45 = &v19 - v20;
  v21 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v19 - v20);
  v46 = &v19 - v21;
  v22 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v19 - v21);
  v47 = &v19 - v22;
  v23 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v19 - v22);
  v48 = &v19 - v23;
  v39 = 0;
  v24 = (*(*(sub_1B9ED862C() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v39);
  v49 = &v19 - v24;
  v9 = sub_1B9ED869C();
  v29 = (*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v31 = &v19 - v29;
  *&v53 = v10;
  *(&v53 + 1) = v11;
  *&v54 = v12;
  *(&v54 + 1) = v13;
  v55 = v4;
  v52.receiver = v4;
  v52.super_class = SFUIShareSheetPopoverBackgroundView;
  *&v51[5] = v10;
  *&v51[6] = v11;
  *&v51[7] = v12;
  *&v51[8] = v13;
  v14 = objc_msgSendSuper2(&v52, sel_initWithFrame_, v10, v11, v12, v13);
  v50 = v14;
  MEMORY[0x1E69E5928](v14);
  v55 = v14;
  MEMORY[0x1E69E5928](v14);
  sub_1B9EA0CC4();
  v30 = sub_1B9EA0CDC();
  v15 = sub_1B9ED86AC();
  v32 = v51;
  v51[3] = v15;
  v51[4] = MEMORY[0x1E69DC388];
  __swift_allocate_boxed_opaque_existential_1(v51);
  sub_1B9ED86BC();
  sub_1B9ED8E2C();
  v16 = v50;
  MEMORY[0x1E69E5920](v50);
  MEMORY[0x1E69E5928](v16);
  v36 = 0x1FADAE000uLL;
  v35 = [v16 0x1FADAE878];
  MEMORY[0x1E69E5920](v16);
  v33 = [objc_opt_self() clearColor];
  v34 = [v33 CGColor];
  MEMORY[0x1E69E5920](v33);
  [v35 setShadowColor_];
  MEMORY[0x1E69E5920](v34);
  MEMORY[0x1E69E5920](v35);
  MEMORY[0x1E69E5928](v16);
  v37 = [v16 (v36 + 2168)];
  MEMORY[0x1E69E5920](v16);
  [v37 setShadowOpacity_];
  MEMORY[0x1E69E5920](v37);
  MEMORY[0x1E69E5928](v16);
  v38 = 0x4043000000000000;
  sub_1B9ED85FC();
  v42 = sub_1B9ED860C();
  v17 = *(v42 - 8);
  v44 = *(v17 + 56);
  v43 = v17 + 56;
  v40 = 0;
  v41 = 1;
  v44(v48);
  sub_1B9ED85FC();
  (v44)(v47, v40, v41, v42);
  sub_1B9ED85EC();
  (v44)(v46, v40, v41, v42);
  sub_1B9ED85EC();
  (v44)(v45, v40, v41, v42);
  sub_1B9ED861C();
  sub_1B9EA0D64(v45);
  sub_1B9EA0D64(v46);
  sub_1B9EA0D64(v47);
  sub_1B9EA0D64(v48);
  sub_1B9ED8E3C();
  MEMORY[0x1E69E5920](v50);
  MEMORY[0x1E69E5920](v55);
  return v50;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  v3 = result;
  if ((*(*(result[3] - 8) + 80) & 0x20000) != 0)
  {
    v1 = swift_allocBox();
    result = v2;
    *v3 = v1;
  }

  return result;
}

uint64_t sub_1B9EA0D64(uint64_t a1)
{
  v3 = sub_1B9ED860C();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

void SFUIShareSheetPopoverBackgroundView.init(coder:)()
{
  sub_1B9ED8B1C();
  sub_1B9ED900C();
  __break(1u);
}

double static SFUIShareSheetPopoverBackgroundView.effectiveBottomRadius(view:)(void *a1)
{
  v8 = [a1 window];
  if (v8)
  {
    v4 = [v8 traitCollection];
    MEMORY[0x1E69E5920](v8);
    [v4 displayCornerRadius];
    v5 = v1;
    MEMORY[0x1E69E5920](v4);
    v6 = v5;
    v7 = 0;
  }

  else
  {
    v6 = 0.0;
    v7 = 1;
  }

  if (v7)
  {
    return 38.0;
  }

  else
  {
    return v6;
  }
}

unint64_t type metadata accessor for SFUIShareSheetPopoverBackgroundView()
{
  v2 = qword_1EBBE6228;
  if (!qword_1EBBE6228)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EBBE6228);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1B9EA1508()
{
  v2 = *(v0 + 16);

  return v2;
}

uint64_t sub_1B9EA1540()
{
  v2 = *(v0 + 32);

  return v2;
}

uint64_t sub_1B9EA1578()
{
  v2 = *(v0 + 48);

  return v2;
}

uint64_t sub_1B9EA1624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  v6[2] = a1;
  v6[3] = a2;

  v6[4] = a3;
  v6[5] = a4;

  v6[6] = a5;
  v6[7] = a6;

  return v14;
}

uint64_t sub_1B9EA1704()
{
  type metadata accessor for TTRReportComponent();
  v7 = sub_1B9ED8B1C();
  v8 = v0;
  v5 = sub_1B9ED8B1C();
  v6 = v1;
  v2 = sub_1B9ED8B1C();
  return sub_1B9EA15B0(v7, v8, v5, v6, v2, v3);
}

uint64_t sub_1B9EA17E8()
{
  sub_1B9E96F0C();
  sub_1B9E96F0C();
  sub_1B9E96F0C();
  return v1;
}

uint64_t sub_1B9EA1874()
{
  v2 = *(v0 + OBJC_IVAR___TTRReport_title);

  return v2;
}

uint64_t sub_1B9EA18C0()
{
  v2 = *(v0 + OBJC_IVAR___TTRReport_desc);

  return v2;
}