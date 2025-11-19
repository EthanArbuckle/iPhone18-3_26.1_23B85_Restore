uint64_t vp::Audio_Converter::get_expected_output_frame_count(vp::Audio_Converter *this, int a2)
{
  v3 = *(this + 8) * a2;
  v9 = 4;
  v10 = v3;
  vp::Audio_Converter::get_property(&v7, *this, 0x636F6273u, &v10, &v9);
  if (v8)
  {
    v4 = &v10;
  }

  else
  {
    v4 = &v7;
  }

  v5 = *v4;
  v7 = *v4;
  if (v8)
  {
    caulk::expected<unsigned int,int>::value(&v7);
    return (v5 / *(this + 18)) | 0x100000000;
  }

  return v5;
}

uint64_t vp::$_4::__invoke<OpaqueAudioConverter *,unsigned int,AudioBufferList,AudioStreamPacketDescription **>(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *a2;
  result = (**a5)(*a5 + 8, a3, &v9);
  v8 = v9;
  *(a5 + 8) += v9;
  *a2 = v8;
  return result;
}

void caulk::function_ref<int ()(AudioBufferList &,unsigned int &)>::empty_invoker()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82888] + 16;
}

void virtual thunk tovp::vx::io::wires::Audio_Converter_Wire::~Audio_Converter_Wire(vp::vx::io::wires::Audio_Converter_Wire *this)
{
  vp::vx::io::wires::Audio_Converter_Wire::~Audio_Converter_Wire((this + *(*this - 24)));
}

{
  v1 = this + *(*this - 24);
  *v1 = &unk_2881B2A18;
  *(v1 + 55) = &unk_2881B2A70;
  *(v1 + 52) = &unk_2881C6630;
  v2 = *(v1 + 54);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::unique_ptr<vp::Audio_Ring_Buffer::Storage,vp::Audio_Ring_Buffer::Storage_Deleter>::reset[abi:ne200100](v1 + 33, 0);
  std::unique_ptr<vp::Audio_Buffer::Storage,vp::Audio_Buffer::Storage_Deleter>::reset[abi:ne200100](v1 + 25, 0);
  *(v1 + 14) = &unk_2881C6630;
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  vp::Audio_Converter::~Audio_Converter(v1 + 1);
  *(v1 + 55) = &unk_2881C6630;
  v4 = *(v1 + 57);
  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void vp::vx::io::wires::Audio_Converter_Wire::~Audio_Converter_Wire(vp::vx::io::wires::Audio_Converter_Wire *this)
{
  *this = &unk_2881B2A18;
  *(this + 55) = &unk_2881B2A70;
  *(this + 52) = &unk_2881C6630;
  v2 = *(this + 54);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::unique_ptr<vp::Audio_Ring_Buffer::Storage,vp::Audio_Ring_Buffer::Storage_Deleter>::reset[abi:ne200100](this + 33, 0);
  std::unique_ptr<vp::Audio_Buffer::Storage,vp::Audio_Buffer::Storage_Deleter>::reset[abi:ne200100](this + 25, 0);
  *(this + 14) = &unk_2881C6630;
  v3 = *(this + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  vp::Audio_Converter::~Audio_Converter(this + 1);
  *(this + 55) = &unk_2881C6630;
  v4 = *(this + 57);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  *this = &unk_2881B2A18;
  *(this + 55) = &unk_2881B2A70;
  *(this + 52) = &unk_2881C6630;
  v2 = *(this + 54);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::unique_ptr<vp::Audio_Ring_Buffer::Storage,vp::Audio_Ring_Buffer::Storage_Deleter>::reset[abi:ne200100](this + 33, 0);
  std::unique_ptr<vp::Audio_Buffer::Storage,vp::Audio_Buffer::Storage_Deleter>::reset[abi:ne200100](this + 25, 0);
  *(this + 14) = &unk_2881C6630;
  v3 = *(this + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  vp::Audio_Converter::~Audio_Converter(this + 1);
  *(this + 55) = &unk_2881C6630;
  v4 = *(this + 57);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

uint64_t vp::vx::io::wires::Audio_Converter_Wire::get_expected_output_frame_count(vp::vx::io::wires::Audio_Converter_Wire *this, int a2)
{
  result = vp::Audio_Converter::get_expected_output_frame_count((this + 8), a2);
  if ((result & 0x100000000) == 0)
  {
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t vp::vx::io::wires::Audio_Converter_Wire::get_required_input_frame_count(vp::vx::io::wires::Audio_Converter_Wire *this, int a2)
{
  v3 = *(this + 20) * a2;
  v9 = 4;
  v10 = v3;
  vp::Audio_Converter::get_property(&v7, *(this + 1), 0x63696273u, &v10, &v9);
  if (v8)
  {
    v4 = &v10;
  }

  else
  {
    v4 = &v7;
  }

  v5 = *v4;
  v7 = *v4;
  if (v8)
  {
    caulk::expected<unsigned int,int>::value(&v7);
    v5 = (v5 / *(this + 10)) | 0x100000000;
  }

  if ((v5 & 0x100000000) != 0)
  {
    return v5;
  }

  result = _os_crash();
  __break(1u);
  return result;
}

void virtual thunk tovp::vx::io::wires::Audio_Converter_Wire::Source_Terminal::~Source_Terminal(vp::vx::io::wires::Audio_Converter_Wire::Source_Terminal *this)
{
  v1 = this + *(*this - 24);
  *(v1 + 2) = &unk_2881C6630;
  v2 = *(v1 + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  v1 = this + *(*this - 24);
  *(v1 + 2) = &unk_2881C6630;
  v2 = *(v1 + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void vp::vx::io::wires::Audio_Converter_Wire::Source_Terminal::~Source_Terminal(vp::vx::io::wires::Audio_Converter_Wire::Source_Terminal *this)
{
  *(this + 2) = &unk_2881C6630;
  v1 = *(this + 4);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  *(this + 2) = &unk_2881C6630;
  v1 = *(this + 4);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void vp::vx::io::wires::Audio_Converter_Wire::Source_Terminal::process(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  if (a2 == 1)
  {
    LOBYTE(v79[0]) = 0;
    LOBYTE(v84) = 1;
  }

  else
  {
    v61 = 0x18001700000004;
    v62 = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/wires/Audio_Converter_Wire.cpp";
    v64 = 0;
    v65 = 0;
    v63 = 0;
    vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(v66);
    _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(v79, &v61);
    if (SHIBYTE(v65) < 0)
    {
      std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v66[0], v63, v65 & 0x7FFFFFFFFFFFFFFFLL);
    }

    if ((v84 & 1) == 0)
    {
      v55 = _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a5, v79);
      if ((v84 & 1) == 0 && SHIBYTE(v82) < 0)
      {
        (*(*v83 + 24))(v83, v80, v82 & 0x7FFFFFFFFFFFFFFFLL, 1, v55);
      }

      return;
    }
  }

  if (!a3)
  {
LABEL_115:
    *a5 = 0;
    a5[48] = 1;
    return;
  }

  if (*(*(a4 + 8) + 56))
  {
    v9 = *(a1 + 8);
    v78 = 0;
    v77 = 0;
    v76 = *a4;
    v75 = *(a4 + 16);
    v74 = 0;
    expected_output_frame_count = vp::Audio_Converter::get_expected_output_frame_count((v9 + 8), *(v9 + 208) + v75);
    LODWORD(v67) = expected_output_frame_count;
    BYTE4(v67) = BYTE4(expected_output_frame_count);
    if ((expected_output_frame_count & 0x100000000) == 0)
    {
      v61 = 0x17007F00000000;
      v62 = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/wires/Audio_Converter_Wire.cpp";
      v64 = 0;
      v65 = 0;
      v63 = 0;
      vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(v66);
      vp::vx::io::operator<<<char const(&)[57]>(v79, &v61);
      MEMORY[0x2743CBB30](&v81, expected_output_frame_count);
      vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(v79);
      v56 = v63;
      v57 = v64;
      v58 = v65;
      v59 = v66[0];
      v64 = 0;
      v65 = 0;
      v63 = 0;
      v72[0] = v61;
      v72[1] = v62;
      v72[2] = v56;
      v72[3] = v57;
      v72[4] = v58;
      v72[5] = v66[0];
      v73 = 0;
      v60 = _ZNKR2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIvEEv(a5, v72);
      if (v58 < 0)
      {
        (*(*v59 + 24))(v59, v56, v58 & 0x7FFFFFFFFFFFFFFFLL, 1, v60);
      }

      return;
    }

    caulk::expected<unsigned int,int>::value(&v67);
    LODWORD(v72[0]) = v67;
    v73 = 1;
    v11 = *(v9 + 272);
    v79[0] = v9;
    v79[1] = &v75;
    v80 = &v76;
    v81 = &v74;
    v82 = &v78;
    v83 = &v77;
    v84 = &v78 + 4;
    v61 = caulk::function_ref<BOOL ()(AudioBufferList *,unsigned int)>::functor_invoker<vp::vx::io::wires::Audio_Converter_Wire::source_process(vp::vx::io::Node_Process_Data const&)::$_1>;
    v62 = v79;
    v12 = *(v9 + 264);
    if (v12)
    {
      v13 = v11;
      v14 = (v11 + v67);
      v67 = *(v12 + 72);
      v15 = *(v12 + 88);
      v16 = *(v12 + 24);
      v17 = v14 - v11 == v16;
      if (v14 - v11 >= v16)
      {
LABEL_41:
        if (!v17)
        {
          goto LABEL_97;
        }

        *(v12 + 72) = v13;
        *(v12 + 80) = v14;
        *(v12 + 88) = 0;
        {
          goto LABEL_97;
        }

LABEL_94:
        if (v75)
        {
          v43 = *(v9 + 200);
          if (v43)
          {
            v44 = *(v43 + 80);
          }

          else
          {
            v44 = 0;
          }

          vp::Audio_Buffer_List_Ref::Audio_Buffer_List_Ref(v79, v44);
          v48 = v79[0];
          v49 = *(v9 + 208);
          vp::Audio_Buffer_List_Ref::Audio_Buffer_List_Ref(v79, v76);
          if ((vp::for_each_buffer_pair(v48, v49, v79[0], v74, vp::copy, v75) & 1) == 0)
          {
            v61 = 0x1700DF00000000;
            v62 = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/wires/Audio_Converter_Wire.cpp";
            v64 = 0;
            v65 = 0;
            v63 = 0;
            vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(v66);
            vp::vx::io::operator<<<char const(&)[41]>(v79, &v61, "failed to write into source audio buffer");
            vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(v79);
            v54 = _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a5, &v61);
            if (SHIBYTE(v65) < 0)
            {
              (*(*v66[0] + 24))(v66[0], v63, v65 & 0x7FFFFFFFFFFFFFFFLL, 1, v54);
            }

            return;
          }

          *(v9 + 208) += v75;
        }

        v50 = *(a4 + 8);
        if (*(v9 + 240) & 1) == 0 && (*(v50 + 56))
        {
          *(v9 + 232) = *v50;
          *(v9 + 240) = 1;
          v50 = *(a4 + 8);
        }

        if (*(v9 + 256) & 1) == 0 && (*(v50 + 56))
        {
          *(v9 + 248) = *v50;
          *(v9 + 256) = 1;
          v50 = *(a4 + 8);
        }

        if ((*(v9 + 224) & 1) == 0 && (*(v50 + 56) & 2) != 0)
        {
          *(v9 + 216) = *(v50 + 1);
          *(v9 + 224) = 1;
          v50 = *(a4 + 8);
        }

        v51 = *v50;
        v52 = v50[1];
        v53 = v50[2];
        *(v9 + 184) = v50[3];
        *(v9 + 168) = v53;
        *(v9 + 152) = v52;
        *(v9 + 136) = v51;
        LODWORD(v51) = v78;
        *(v9 + 272) = *(v9 + 272) + v51;
        goto LABEL_115;
      }

      v18 = *(v12 + 72);
      v19 = *(v12 + 80);
      if (v18 >= v13)
      {
        if (v19 <= v18)
        {
          v29 = 0;
          v30 = 0;
          if (v14 >= v13 + v16)
          {
            v21 = v13 + v16;
          }

          else
          {
            v21 = v14;
          }

          v34 = v15 - v18 + v13;
          v23 = v11;
        }

        else
        {
          if (v14 <= v13)
          {
            v31 = v11;
          }

          else
          {
            v31 = *(v12 + 72);
          }

          if (v19 <= v14)
          {
            v32 = v14;
          }

          else
          {
            v32 = *(v12 + 80);
          }

          if (v19 >= v14)
          {
            v33 = v14;
          }

          else
          {
            v33 = *(v12 + 80);
          }

          if (v14 > v13)
          {
            v23 = v11;
          }

          else
          {
            v32 = *(v12 + 80);
            v23 = *(v12 + 72);
          }

          if (v14 <= v13)
          {
            v33 = v14;
          }

          if (v32 >= v23 + v16)
          {
            v21 = v23 + v16;
          }

          else
          {
            v21 = v32;
          }

          v34 = v15 - v18 + v23;
          if (v33 <= v31)
          {
            v29 = *(v12 + 72);
          }

          else
          {
            v29 = 0;
          }

          if (v33 <= v31)
          {
            v30 = v14;
          }

          else
          {
            v30 = 0;
          }
        }

        v35 = v34 % v16;
        *(v12 + 72) = v23;
        *(v12 + 80) = v21;
        if (v34 % v16 >= 0)
        {
          v36 = v34 % v16;
        }

        else
        {
          v36 = -v35;
        }

        if (v36 < v16)
        {
          LODWORD(v24) = ((v35 >> 63) & v16) + v35;
          goto LABEL_78;
        }

LABEL_131:
        _os_crash();
        __break(1u);
        return;
      }

      if (v19 <= v14)
      {
        v20 = v14;
      }

      else
      {
        v20 = *(v12 + 80);
      }

      if (v14 <= v13)
      {
        v20 = *(v12 + 80);
      }

      if (v19 <= v18)
      {
        v21 = v14;
      }

      else
      {
        v21 = v20;
      }

      if (v19 <= v18)
      {
        v22 = v11;
      }

      else
      {
        v22 = *(v12 + 72);
      }

      if (v22 <= v21 - v16)
      {
        v23 = v21 - v16;
      }

      else
      {
        v23 = v22;
      }

      v24 = (v15 - v18 + v23) % v16;
      if (v19 >= v14)
      {
        v25 = v14;
      }

      else
      {
        v25 = *(v12 + 80);
      }

      v26 = v25 <= v13;
      if (v25 <= v13)
      {
        v27 = v11;
      }

      else
      {
        v27 = 0;
      }

      if (v26)
      {
        v28 = *(v12 + 80);
      }

      else
      {
        v28 = 0;
      }

      if (v19 > v18)
      {
        v29 = v27;
      }

      else
      {
        v29 = 0;
      }

      if (v19 > v18)
      {
        v30 = v28;
      }

      else
      {
        v30 = 0;
      }

      *(v12 + 72) = v23;
      *(v12 + 80) = v21;
      if ((v24 & 0x8000000000000000) == 0)
      {
        if (v24 >= v16)
        {
          _os_crash();
          __break(1u);
          goto LABEL_41;
        }

LABEL_78:
        *(v12 + 88) = v24;
        {
          goto LABEL_97;
        }

        v37 = *(v12 + 72);
        v38 = *(v12 + 80);
        if (v37 <= v30)
        {
          v39 = v30;
        }

        else
        {
          v39 = *(v12 + 72);
        }

        if (v29 >= v38)
        {
          v40 = *(v12 + 80);
        }

        else
        {
          v40 = v29;
        }

        if (v29 <= v30)
        {
          v40 = v29;
          v39 = v30;
        }

        v41 = v38 > v37 ? v40 : *(v12 + 80);
        v42 = v38 > v37 ? v39 : *(v12 + 72);
        {
LABEL_97:
          *(v12 + 72) = v67;
          *(v12 + 88) = v15;
          *&v67 = 0x1300CD00000000;
          *(&v67 + 1) = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/wires/Audio_Converter_Wire.cpp";
          v69 = 0;
          v70 = 0;
          v68 = 0;
          vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v71);
          vp::vx::io::operator<<<char const(&)[51]>(v79, &v67, "failed to write into destination audio ring buffer");
          vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(v79);
          if (HIDWORD(v78))
          {
            vp::vx::io::operator<<<char const(&)[55]>(&v61, &v67, " because audio converter failed to render with status ");
            MEMORY[0x2743CBB30](&v64, HIDWORD(v78));
            vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(&v61);
          }

          _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a5, &v67);
          if (SHIBYTE(v70) < 0)
          {
            v45 = v68;
            v47 = v70;
            v46 = v71;
LABEL_101:
            std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v46, v45, v47 & 0x7FFFFFFFFFFFFFFFLL);
            return;
          }

          return;
        }

        goto LABEL_94;
      }
    }

    else
    {
      _os_crash();
      __break(1u);
    }

    _os_crash();
    __break(1u);
    goto LABEL_131;
  }

  v61 = 0x13006E00000000;
  v62 = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/wires/Audio_Converter_Wire.cpp";
  v64 = 0;
  v65 = 0;
  v63 = 0;
  vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(v66);
  vp::vx::io::operator<<<char const(&)[49]>(v79, &v61, "audio time stamp does not have valid sample time");
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(v79);
  _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a5, &v61);
  if (SHIBYTE(v65) < 0)
  {
    v45 = v63;
    v47 = v65;
    v46 = v66[0];
    goto LABEL_101;
  }
}

void sub_2725C1988(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(&a64);
  if (SHIBYTE(a14) < 0)
  {
    std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](a15, a12, a14 & 0x7FFFFFFFFFFFFFFFLL);
  }

  __clang_call_terminate(a1);
}

void vp::vx::io::operator<<<char const(&)[57]>(void *a1, uint64_t a2)
{
  std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100](v5);
  v4 = a2;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "audio converter failed pre-flight operation with status ", 56);
  *a1 = a2;
  std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100]((a1 + 1), v5);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(&v4);
}

void sub_2725C1A44(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(va);
  _Unwind_Resume(a1);
}

double _ZNKR2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIvEEv(uint64_t a1, int *a2)
{
  v3 = *a2;
  v9 = *a2;
  v4 = *(a2 + 2);
  v10 = v4;
  v5 = *(a2 + 3);
  v11 = v5;
  v6 = *(a2 + 1);
  v7 = *(a2 + 5);
  v12 = v6;
  v15 = v7;
  if (*(a2 + 39) < 0)
  {
    std::basic_string<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::__init_copy_ctor_external(&v13, *(a2 + 2), *(a2 + 3));
    v3 = v9;
    v4 = v10;
    v5 = v11;
    v6 = v12;
    v7 = v15;
  }

  else
  {
    v13 = *(a2 + 1);
    v14 = *(a2 + 4);
  }

  *a1 = v3;
  *(a1 + 4) = v4;
  *(a1 + 6) = v5;
  *(a1 + 8) = v6;
  result = *&v13;
  *(a1 + 16) = v13;
  *(a1 + 32) = v14;
  *(a1 + 40) = v7;
  *(a1 + 48) = 0;
  return result;
}

void vp::vx::io::operator<<<char const(&)[51]>(void *a1, uint64_t a2, const char *a3)
{
  std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100](v8);
  v7 = a2;
  v6 = strlen(a3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, a3, v6);
  *a1 = a2;
  std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100]((a1 + 1), v8);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(&v7);
}

void sub_2725C1BB0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(va);
  _Unwind_Resume(a1);
}

void vp::vx::io::operator<<<char const(&)[55]>(void *a1, uint64_t a2, const char *a3)
{
  std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100](v8);
  v7 = a2;
  v6 = strlen(a3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, a3, v6);
  *a1 = a2;
  std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100]((a1 + 1), v8);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(&v7);
}

void sub_2725C1C4C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(va);
  _Unwind_Resume(a1);
}

void vp::vx::io::operator<<<char const(&)[41]>(void *a1, uint64_t a2, const char *a3)
{
  std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100](v8);
  v7 = a2;
  v6 = strlen(a3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, a3, v6);
  *a1 = a2;
  std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100]((a1 + 1), v8);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(&v7);
}

void sub_2725C1CE8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(va);
  _Unwind_Resume(a1);
}

BOOL caulk::function_ref<BOOL ()(AudioBufferList *,unsigned int)>::functor_invoker<vp::vx::io::wires::Audio_Converter_Wire::source_process(vp::vx::io::Node_Process_Data const&)::$_1>(uint64_t **a1, AudioBufferList *outOutputData, int a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = **a1;
  v9 = v4;
  v10 = *(v3 + 1);
  v11 = v3[3];
  v12[0] = _ZN5caulk12function_refIFiR15AudioBufferListRjEE15functor_invokerIZZN2vp2vx2io5wires20Audio_Converter_Wire14source_processERKNS9_17Node_Process_DataEENK3__1clIS1_jEEDaPT_T0_EUlRSI_RSK_E_EEiRKNS_7details15erased_callableIS4_EES2_S3_;
  v12[1] = &v9;
  if (_ZN5caulk12function_refIFiR15AudioBufferListRjEE15functor_invokerIZZN2vp2vx2io5wires20Audio_Converter_Wire14source_processERKNS9_17Node_Process_DataEENK3__1clIS1_jEEDaPT_T0_EUlRSI_RSK_E_EEiRKNS_7details15erased_callableIS4_EES2_S3_ == caulk::function_ref<int ()(AudioBufferList &,unsigned int &)>::empty_invoker)
  {
    v13 = 0;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    inInputDataProcUserData = 0u;
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    v14 = 134217984;
    v15 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_8:
    v13 = 0;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    inInputDataProcUserData = 0u;
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    v14 = 134217984;
    v15 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (!outOutputData)
  {
    goto LABEL_8;
  }

  *&inInputDataProcUserData = v12;
  DWORD2(inInputDataProcUserData) = 0;
  HIDWORD(inInputDataProcUserData) = a3;
  v5 = AudioConverterFillComplexBuffer(*(v4 + 8), vp::$_4::__invoke<OpaqueAudioConverter *,unsigned int,AudioBufferList,AudioStreamPacketDescription **>, &inInputDataProcUserData, &inInputDataProcUserData + 3, outOutputData, 0);
  if (v5)
  {
    *v3[6] = v5;
  }

  else
  {
    v6 = DWORD2(inInputDataProcUserData);
    *v3[4] += HIDWORD(inInputDataProcUserData);
    *v3[5] += v6;
  }

  result = v5 == 0;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2725C1F30(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t _ZN5caulk12function_refIFiR15AudioBufferListRjEE15functor_invokerIZZN2vp2vx2io5wires20Audio_Converter_Wire14source_processERKNS9_17Node_Process_DataEENK3__1clIS1_jEEDaPT_T0_EUlRSI_RSK_E_EEiRKNS_7details15erased_callableIS4_EES2_S3_(uint64_t **a1, unsigned int *a2, unsigned int *a3)
{
  v5 = *a1;
  v6 = **a1;
  v7 = *(v6 + 208);
  v8 = *a3;
  if (v7)
  {
    if (v7 >= v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = v7;
    }

    v10 = *(v6 + 200);
    if (v10)
    {
      v11 = *(v10 + 80);
    }

    else
    {
      v11 = 0;
    }

    vp::Audio_Buffer_List_Ref::Audio_Buffer_List_Ref(&v17, v11);
    v12 = vp::for_each_buffer_pair(a2, 0, v17, 0, vp::copy, v9);
    *(v6 + 208) -= v9;
    v8 = *a3 - v9;
    *a3 = v8;
  }

  else
  {
    LODWORD(v9) = 0;
    v12 = 1;
  }

  v13 = *v5[1];
  if (v13 >= v8)
  {
    v14 = v8;
  }

  else
  {
    v14 = v13;
  }

  vp::Audio_Buffer_List_Ref::Audio_Buffer_List_Ref(&v17, *v5[2]);
  v15 = vp::for_each_buffer_pair(a2, v9, v17, *v5[3], vp::copy, v14);
  *v5[3] += v14;
  *v5[1] -= v14;
  *a3 = v14 + v9;
  if ((v15 & v12) != 0)
  {
    return 0;
  }

  else
  {
    return 2003329396;
  }
}

void *std::basic_string<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::__init_copy_ctor_external(void **__dst, void *__src, unint64_t a3)
{
  v5 = __dst;
  if (a3 > 0x16)
  {
    if (a3 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if ((a3 | 7) == 0x17)
    {
      v6 = 25;
    }

    else
    {
      v6 = (a3 | 7) + 1;
    }

    v7 = (*(*__dst[3] + 16))(__dst[3], v6, 1);
    v5[1] = a3;
    v5[2] = v6 | 0x8000000000000000;
    *v5 = v7;
    v5 = v7;
  }

  else
  {
    *(__dst + 23) = a3;
  }

  return memmove(v5, __src, a3 + 1);
}

__n128 vp::vx::io::wires::Audio_Converter_Wire::Source_Terminal::get_time@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(v2 + 152);
  *a2 = *(v2 + 136);
  *(a2 + 16) = v3;
  result = *(v2 + 168);
  v5 = *(v2 + 184);
  *(a2 + 32) = result;
  *(a2 + 48) = v5;
  *(a2 + 64) = 1;
  return result;
}

__n128 vp::vx::io::wires::Audio_Converter_Wire::Source_Terminal::get_format@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  result = *(v2 + 16);
  v4 = *(v2 + 32);
  *a2 = result;
  *(a2 + 16) = v4;
  *(a2 + 32) = *(v2 + 48);
  *(a2 + 48) = 1;
  return result;
}

void virtual thunk tovp::vx::io::wires::Audio_Converter_Wire::Destination_Terminal::~Destination_Terminal(vp::vx::io::wires::Audio_Converter_Wire::Destination_Terminal *this)
{
  v1 = this + *(*this - 24);
  *(v1 + 2) = &unk_2881C6630;
  v2 = *(v1 + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  v1 = this + *(*this - 24);
  *(v1 + 2) = &unk_2881C6630;
  v2 = *(v1 + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void vp::vx::io::wires::Audio_Converter_Wire::Destination_Terminal::~Destination_Terminal(vp::vx::io::wires::Audio_Converter_Wire::Destination_Terminal *this)
{
  *(this + 2) = &unk_2881C6630;
  v1 = *(this + 4);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  *(this + 2) = &unk_2881C6630;
  v1 = *(this + 4);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void vp::vx::io::wires::Audio_Converter_Wire::Destination_Terminal::process(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, _BYTE *a5@<X8>, unint64_t a6@<D1>)
{
  if (a2)
  {
    v24 = 0x18001700000004;
    v25 = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/wires/Audio_Converter_Wire.cpp";
    v27 = 0;
    v28 = 0;
    v26 = 0;
    vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v29);
    _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(v20, &v24);
    if (SHIBYTE(v28) < 0)
    {
      std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v29, v26, v28 & 0x7FFFFFFFFFFFFFFFLL);
    }

    if ((v23 & 1) == 0)
    {
      v19 = _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a5, v20);
      if ((v23 & 1) == 0 && SHIBYTE(v21) < 0)
      {
        (*(*v22 + 24))(v22, v20[2], v21 & 0x7FFFFFFFFFFFFFFFLL, 1, v19);
      }

      return;
    }
  }

  else
  {
    LOBYTE(v20[0]) = 0;
    v23 = 1;
  }

  if (a3)
  {
LABEL_11:
    *a5 = 0;
    a5[48] = 1;
    return;
  }

  v10 = *(a1 + 8);
  v11 = *a4;
  v12 = *(a4 + 8);
  v13 = *(v10 + 336);
  LODWORD(a6) = *(a4 + 16);
  v14 = a6;
  if (*(v10 + 224) == 1)
  {
    v15 = *(v10 + 192);
    if (v15 & 2) != 0 && (v15 & 1) != 0 && (*(v10 + 240))
    {
      *(v10 + 344) = (*(v10 + 144) + llround((v13 / *(v10 + 56) - (*(v10 + 136) / *(v10 + 16) - *(v10 + 232) / *(v10 + 16))) * 24000000.0));
      *(v10 + 392) |= 2u;
    }
  }

  if (vp::Audio_Ring_Buffer::read(*(v10 + 264), v11, v13, (v13 + a6)))
  {
    v16 = *(v10 + 336);
    v17 = *(v10 + 352);
    v18 = *(v10 + 384);
    v12[2] = *(v10 + 368);
    v12[3] = v18;
    *v12 = v16;
    v12[1] = v17;
    *(v10 + 336) = *(v10 + 336) + v14;
    goto LABEL_11;
  }

  v24 = 0x13014500000000;
  v25 = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/wires/Audio_Converter_Wire.cpp";
  v27 = 0;
  v28 = 0;
  v26 = 0;
  vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v29);
  vp::vx::io::operator<<<char const(&)[50]>(v20, &v24, "failed to read from destination audio ring buffer");
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(v20);
  _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(a5, &v24);
  if (SHIBYTE(v28) < 0)
  {
    std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v29, v26, v28 & 0x7FFFFFFFFFFFFFFFLL);
  }
}

void vp::vx::io::operator<<<char const(&)[50]>(void *a1, uint64_t a2, const char *a3)
{
  std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100](v8);
  v7 = a2;
  v6 = strlen(a3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, a3, v6);
  *a1 = a2;
  std::basic_stringstream<char,std::char_traits<char>,vp::Real_Time_Safe_Allocator<char>>::basic_stringstream[abi:ne200100]((a1 + 1), v8);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(&v7);
}

void sub_2725C25EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  vp::vx::io::Error_String_Stream_Writer::~Error_String_Stream_Writer(va);
  _Unwind_Resume(a1);
}

__n128 vp::vx::io::wires::Audio_Converter_Wire::Destination_Terminal::get_time@<Q0>(uint64_t a1@<X0>, int a2@<W2>, uint64_t a3@<X8>)
{
  v3 = 272;
  if (!a2)
  {
    v3 = 336;
  }

  v4 = *(a1 + 8) + v3;
  v5 = *(v4 + 16);
  *a3 = *v4;
  *(a3 + 16) = v5;
  result = *(v4 + 32);
  v7 = *(v4 + 48);
  *(a3 + 32) = result;
  *(a3 + 48) = v7;
  *(a3 + 64) = 1;
  return result;
}

__n128 vp::vx::io::wires::Audio_Converter_Wire::Destination_Terminal::get_format@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  result = *(v2 + 56);
  v4 = *(v2 + 72);
  *a2 = result;
  *(a2 + 16) = v4;
  *(a2 + 32) = *(v2 + 88);
  *(a2 + 48) = 1;
  return result;
}

void vp::vx::components::Audio_Data_Analysis::get_dsp_property_override(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v15 = *MEMORY[0x277D85DE8];
  if (a2 == 1 && a3 == 1633968493)
  {
    v5 = *(a1 + 128);
    if (v5)
    {
      v6 = (*(*v5 + 16))(v5);
    }

    else
    {
      v6 = 561211748;
    }

    v12 = 6;
    strcpy(bytes, "UInt64");
    v13 = CFStringCreateWithBytes(0, bytes, 6, 0x8000100u, 0);
    if (!v13)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }

    if (v12 < 0)
    {
      operator delete(*bytes);
    }

    *bytes = v6;
    cf = CFNumberCreate(0, kCFNumberLongLongType, bytes);
    if (!cf)
    {
      v9 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v9, "Could not construct");
    }

    v10[0] = &v13;
    v10[1] = 1;
    *a4 = applesauce::CF::details::make_CFDictionaryRef(v10);
    *(a4 + 24) = 1;
    if (cf)
    {
      CFRelease(cf);
    }

    if (v13)
    {
      CFRelease(v13);
    }
  }

  else
  {
    *(a4 + 24) = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_2725C2848(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, const void *a17, const void *a18)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(&a18);
  applesauce::CF::TypeRef::~TypeRef(&a17);
  _Unwind_Resume(a1);
}

void vp::vx::components::Audio_Data_Analysis::end_configuration_change(vp *a1, int a2, int a3)
{
  v25 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    log = vp::get_log(a1);
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      log_context_info = vp::get_log_context_info(__p, a1, "vp::vx::components::Audio_Data_Analysis]", 39);
      v7 = v16;
      v8 = v16;
      v9 = __p[1];
      v10 = vp::get_log(log_context_info);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        if (v8 >= 0)
        {
          v11 = v7;
        }

        else
        {
          v11 = v9;
        }

        v12 = __p[0];
        if (v8 >= 0)
        {
          v12 = __p;
        }

        *buf = 136315906;
        v18 = v12;
        if (v11)
        {
          v13 = " ";
        }

        else
        {
          v13 = "";
        }

        v19 = 2080;
        v20 = v13;
        v21 = 2080;
        v22 = "uplink";
        v23 = 1024;
        v24 = a3;
        _os_log_impl(&dword_2724B4000, v10, OS_LOG_TYPE_INFO, "%s%send %s configuration changes with error %u", buf, 0x26u);
        LOBYTE(v8) = v16;
      }

      if ((v8 & 0x80) != 0)
      {
        operator delete(__p[0]);
      }
    }

    vp::vx::components::Audio_Data_Analysis::unregister_listeners(a1);
    vp::vx::components::Audio_Data_Analysis::destroy_audio_data_analysis_client(a1);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void vp::vx::components::Audio_Data_Analysis::unregister_listeners(vp::vx::components::Audio_Data_Analysis *this)
{
  v1 = *(this + 18);
  if (v1)
  {
    vp::vx::data_flow::State<void>::unregister_listener(this + 12, v1);
    *(this + 18) = 0;
    vp::vx::data_flow::State<void>::unregister_listener(this + 20, *(this + 26));
    *(this + 26) = 0;
  }
}

void vp::vx::components::Audio_Data_Analysis::destroy_audio_data_analysis_client(vp::vx::components::Audio_Data_Analysis *this)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = *(this + 16);
  if (v2)
  {
    v3 = (*(*v2 + 16))(v2);
    v4 = *(this + 17);
    *(this + 16) = 0;
    *(this + 17) = 0;
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    log = vp::get_log(v4);
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      log_context_info = vp::get_log_context_info(__p, this, "vp::vx::components::Audio_Data_Analysis]", 39);
      v7 = v16;
      v8 = v16;
      v9 = __p[1];
      v10 = vp::get_log(log_context_info);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        if (v8 >= 0)
        {
          v11 = v7;
        }

        else
        {
          v11 = v9;
        }

        v12 = __p[0];
        if (v8 >= 0)
        {
          v12 = __p;
        }

        *buf = 136315650;
        v18 = v12;
        if (v11)
        {
          v13 = " ";
        }

        else
        {
          v13 = "";
        }

        v19 = 2080;
        v20 = v13;
        v21 = 2048;
        v22 = v3;
        _os_log_impl(&dword_2724B4000, v10, OS_LOG_TYPE_DEFAULT, "%s%sdestroyed audio data analysis client with session ID %llu", buf, 0x20u);
        LOBYTE(v8) = v16;
      }

      if ((v8 & 0x80) != 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void vp::vx::components::Audio_Data_Analysis::end_configuration_change(vp *a1, int a2)
{
  v29 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    log = vp::get_log(a1);
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      log_context_info = vp::get_log_context_info(__p, a1, "vp::vx::components::Audio_Data_Analysis]", 39);
      v6 = v28;
      v7 = v28;
      v8 = *&__p[8];
      v9 = vp::get_log(log_context_info);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        if (v7 >= 0)
        {
          v10 = v6;
        }

        else
        {
          v10 = v8;
        }

        v11 = *__p;
        if (v7 >= 0)
        {
          v11 = __p;
        }

        if (v10)
        {
          v12 = " ";
        }

        else
        {
          v12 = "";
        }

        *v24 = 136315650;
        *&v24[4] = v11;
        *&v24[12] = 2080;
        *&v24[14] = v12;
        v25 = 2080;
        v26 = "uplink";
        _os_log_impl(&dword_2724B4000, v9, OS_LOG_TYPE_INFO, "%s%send %s configuration changes", v24, 0x20u);
        LOBYTE(v7) = v28;
      }

      if ((v7 & 0x80) != 0)
      {
        operator delete(*__p);
      }
    }

    v13 = *(a1 + 16);
    if (v13)
    {
      v14 = (*(*v13 + 56))(v13);
      if ((v14 & 1) == 0)
      {
        v15 = vp::get_log(v14);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v16 = vp::get_log_context_info(v24, a1, "vp::vx::components::Audio_Data_Analysis]", 39);
          v17 = HIBYTE(v25);
          v18 = SHIBYTE(v25);
          v19 = *&v24[8];
          v20 = vp::get_log(v16);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            if (v18 >= 0)
            {
              v21 = v17;
            }

            else
            {
              v21 = v19;
            }

            v22 = *v24;
            if (v18 >= 0)
            {
              v22 = v24;
            }

            if (v21)
            {
              v23 = " ";
            }

            else
            {
              v23 = "";
            }

            *__p = 136315394;
            *&__p[4] = v22;
            *&__p[12] = 2080;
            *&__p[14] = v23;
            _os_log_impl(&dword_2724B4000, v20, OS_LOG_TYPE_ERROR, "%s%sfailed to initialize audio data analysis client", __p, 0x16u);
            LOBYTE(v18) = HIBYTE(v25);
          }

          if ((v18 & 0x80) != 0)
          {
            operator delete(*v24);
          }
        }
      }
    }
  }

  v2 = *MEMORY[0x277D85DE8];
}

void vp::vx::components::Audio_Data_Analysis::begin_configuration_change(uint64_t a1, int a2)
{
  v50 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    goto LABEL_2;
  }

  log = vp::get_log(a1);
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    log_context_info = vp::get_log_context_info(__p, a1, "vp::vx::components::Audio_Data_Analysis]", 39);
    v6 = __p[23];
    v7 = __p[23];
    v8 = *&__p[8];
    v9 = vp::get_log(log_context_info);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      if (v7 >= 0)
      {
        v10 = v6;
      }

      else
      {
        v10 = v8;
      }

      v11 = *__p;
      if (v7 >= 0)
      {
        v11 = __p;
      }

      if (v10)
      {
        v12 = " ";
      }

      else
      {
        v12 = "";
      }

      *buf = 136315650;
      *&buf[4] = v11;
      *&buf[12] = 2080;
      *&buf[14] = v12;
      *&buf[22] = 2080;
      v49 = "uplink";
      _os_log_impl(&dword_2724B4000, v9, OS_LOG_TYPE_INFO, "%s%sbegin %s configuration changes", buf, 0x20u);
      LOBYTE(v7) = __p[23];
    }

    if ((v7 & 0x80) != 0)
    {
      operator delete(*__p);
    }
  }

  vp::vx::components::Audio_Data_Analysis::unregister_listeners(a1);
  vp::vx::components::Audio_Data_Analysis::destroy_audio_data_analysis_client(a1);
  v13 = *(a1 + 112);
  default_resource = std::pmr::get_default_resource(v14);
  *&buf[8] = 0uLL;
  *buf = default_resource;
  vp::vx::data_flow::State<void>::get_value((a1 + 48), buf);
  v16 = vp::vx::data_flow::Value::view_storage(buf);
  *__p = *v16;
  *&__p[16] = *(v16 + 16);
  *v16 = 0;
  *(v16 + 8) = 0;
  *(v16 + 16) = 0;
  vp::vx::data_flow::Value::~Value(buf);
  (*(*v13 + 16))(v46, v13, __p);
  if (v46[0])
  {
    operator new();
  }

  v46[0] = 0;
  v17 = *(a1 + 136);
  *(a1 + 128) = 0u;
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    v18 = v46[0];
    v19 = *(a1 + 128) == 0;
    v46[0] = 0;
    if (v18)
    {
      (*(*v18 + 8))(v18);
    }
  }

  else
  {
    v19 = 1;
    v46[0] = 0;
  }

  v20 = *__p;
  if (*__p)
  {
    *&__p[8] = *__p;
    operator delete(*__p);
  }

  if (v19)
  {
    v21 = vp::get_log(v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = vp::get_log_context_info(buf, a1, "vp::vx::components::Audio_Data_Analysis]", 39);
      v23 = buf[23];
      v24 = buf[23];
      v25 = *&buf[8];
      v26 = vp::get_log(v22);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        if (v24 >= 0)
        {
          v27 = v23;
        }

        else
        {
          v27 = v25;
        }

        v28 = *buf;
        if (v24 >= 0)
        {
          v28 = buf;
        }

        if (v27)
        {
          v29 = " ";
        }

        else
        {
          v29 = "";
        }

        *__p = 136315394;
        *&__p[4] = v28;
        *&__p[12] = 2080;
        *&__p[14] = v29;
        _os_log_impl(&dword_2724B4000, v26, OS_LOG_TYPE_ERROR, "%s%sfailed to create audio data analysis client", __p, 0x16u);
        LOBYTE(v24) = buf[23];
      }

      if ((v24 & 0x80) != 0)
      {
        operator delete(*buf);
      }
    }

    v30 = *(a1 + 144);
    v31 = *(v30 + 16);
    *(v30 + 8) = 0;
    *(v30 + 16) = 0;
    if (!v31)
    {
      goto LABEL_57;
    }
  }

  else
  {
    v32 = (*(**(a1 + 128) + 16))(*(a1 + 128));
    v33 = vp::get_log(v32);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v34 = vp::get_log_context_info(__p, a1, "vp::vx::components::Audio_Data_Analysis]", 39);
      v35 = __p[23];
      v36 = __p[23];
      v37 = *&__p[8];
      v38 = vp::get_log(v34);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        if (v36 >= 0)
        {
          v39 = v35;
        }

        else
        {
          v39 = v37;
        }

        v40 = *__p;
        if (v36 >= 0)
        {
          v40 = __p;
        }

        *buf = 136315650;
        *&buf[4] = v40;
        if (v39)
        {
          v41 = " ";
        }

        else
        {
          v41 = "";
        }

        *&buf[12] = 2080;
        *&buf[14] = v41;
        *&buf[22] = 2048;
        v49 = v32;
        _os_log_impl(&dword_2724B4000, v38, OS_LOG_TYPE_DEFAULT, "%s%screated audio data analysis client with session ID %llu", buf, 0x20u);
        LOBYTE(v36) = __p[23];
      }

      if ((v36 & 0x80) != 0)
      {
        operator delete(*__p);
      }
    }

    v43 = *(a1 + 136);
    v42 = *(a1 + 144);
    v44 = *(a1 + 128);
    if (v43)
    {
      atomic_fetch_add_explicit((v43 + 8), 1uLL, memory_order_relaxed);
    }

    v31 = *(v42 + 16);
    *(v42 + 8) = v44;
    *(v42 + 16) = v43;
    if (!v31)
    {
      goto LABEL_57;
    }
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v31);
LABEL_57:
  if (*(a1 + 128))
  {
    v45 = *(a1 + 136);
    if (v45)
    {
      atomic_fetch_add_explicit((v45 + 16), 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit((v45 + 16), 1uLL, memory_order_relaxed);
    }

    v46[3] = 0;
    operator new();
  }

LABEL_2:
  v2 = *MEMORY[0x277D85DE8];
}

void sub_2725C34BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<void ()(std::vector<long long> const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(std::vector<long long> const&)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(applesauce::CF::StringRef const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(applesauce::CF::StringRef const&)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__func<vp::vx::data_flow::State<applesauce::CF::StringRef>::register_listener(std::function<void ()(applesauce::CF::StringRef const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<applesauce::CF::StringRef>::register_listener(std::function<void ()(applesauce::CF::StringRef const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::operator()(uint64_t result, int a2, vp::vx::data_flow::Value *this)
{
  if (*(result + 32))
  {
    v3 = *(this + 2) == &vp::vx::data_flow::Value::type_id<applesauce::CF::StringRef>(void)::s_type_id;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v4 = result;
    result = vp::vx::data_flow::Value::view_storage(this);
    if (result)
    {
      v5 = *(v4 + 32);
      if (!v5)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      v6 = *(*v5 + 48);

      return v6();
    }
  }

  return result;
}

CFTypeRef vp::vx::data_flow::Value::Type_ID_Eraser<applesauce::CF::StringRef>::copy_value(uint64_t a1, void *a2, CFTypeRef *a3)
{
  v4 = *a3;
  if (*a3)
  {
    result = CFRetain(*a3);
  }

  *a2 = v4;
  return result;
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<applesauce::CF::StringRef>::view_storage(uint64_t a1, uint64_t a2)
{
  return a2;
}

{
  return a2;
}

void std::__function::__func<vp::vx::data_flow::State<applesauce::CF::StringRef>::register_listener(std::function<void ()(applesauce::CF::StringRef const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<applesauce::CF::StringRef>::register_listener(std::function<void ()(applesauce::CF::StringRef const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(applesauce::CF::StringRef const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<vp::vx::data_flow::State<applesauce::CF::StringRef>::register_listener(std::function<void ()(applesauce::CF::StringRef const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<applesauce::CF::StringRef>::register_listener(std::function<void ()(applesauce::CF::StringRef const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B5A90;
  std::__function::__value_func<void ()(applesauce::CF::StringRef const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<vp::vx::data_flow::State<applesauce::CF::StringRef>::register_listener(std::function<void ()(applesauce::CF::StringRef const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<applesauce::CF::StringRef>::register_listener(std::function<void ()(applesauce::CF::StringRef const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B5A90;
  std::__function::__value_func<void ()(applesauce::CF::StringRef const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<vp::vx::components::Audio_Data_Analysis::register_listeners(void)::$_1,std::allocator<vp::vx::components::Audio_Data_Analysis::register_listeners(void)::$_1>,void ()(applesauce::CF::StringRef const&)>::operator()(void *a1, const void **a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a1[3];
  if (v3)
  {
    v5 = a1[1];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      v8 = a1[2];
      if (v8)
      {
        v9 = *a2;
        if (v9)
        {
          CFRetain(v9);
        }

        cf = v9;
        v10 = (*(*v8 + 32))(v8, &cf);
        v11 = cf;
        if (cf)
        {
          CFRelease(cf);
        }

        if ((v10 & 1) == 0)
        {
          log = vp::get_log(v11);
          if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
          {
            log_context_info = vp::get_log_context_info(__p, v5, "vp::vx::components::Audio_Data_Analysis]", 39);
            v14 = v23;
            v15 = v23;
            v16 = __p[1];
            v17 = vp::get_log(log_context_info);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              if (v15 >= 0)
              {
                v18 = v14;
              }

              else
              {
                v18 = v16;
              }

              v19 = __p[0];
              if (v15 >= 0)
              {
                v19 = __p;
              }

              if (v18)
              {
                v20 = " ";
              }

              else
              {
                v20 = "";
              }

              *buf = 136315394;
              v26 = v19;
              v27 = 2080;
              v28 = v20;
              _os_log_impl(&dword_2724B4000, v17, OS_LOG_TYPE_ERROR, "%s%sfailed to set audio application bundle ID", buf, 0x16u);
              LOBYTE(v15) = v23;
            }

            if ((v15 & 0x80) != 0)
            {
              operator delete(__p[0]);
            }
          }
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

void sub_2725C3CDC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void std::__function::__func<vp::vx::components::Audio_Data_Analysis::register_listeners(void)::$_1,std::allocator<vp::vx::components::Audio_Data_Analysis::register_listeners(void)::$_1>,void ()(applesauce::CF::StringRef const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<vp::vx::components::Audio_Data_Analysis::register_listeners(void)::$_1,std::allocator<vp::vx::components::Audio_Data_Analysis::register_listeners(void)::$_1>,void ()(applesauce::CF::StringRef const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t std::__function::__func<vp::vx::components::Audio_Data_Analysis::register_listeners(void)::$_1,std::allocator<vp::vx::components::Audio_Data_Analysis::register_listeners(void)::$_1>,void ()(applesauce::CF::StringRef const&)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881B2DC0;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<vp::vx::components::Audio_Data_Analysis::register_listeners(void)::$_1,std::allocator<vp::vx::components::Audio_Data_Analysis::register_listeners(void)::$_1>,void ()(applesauce::CF::StringRef const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B2DC0;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<vp::vx::components::Audio_Data_Analysis::register_listeners(void)::$_1,std::allocator<vp::vx::components::Audio_Data_Analysis::register_listeners(void)::$_1>,void ()(applesauce::CF::StringRef const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B2DC0;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t std::__function::__func<vp::vx::data_flow::State<std::vector<long long>>::register_listener(std::function<void ()(std::vector<long long> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<std::vector<long long>>::register_listener(std::function<void ()(std::vector<long long> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::operator()(uint64_t result, int a2, vp::vx::data_flow::Value *this)
{
  if (*(result + 32))
  {
    v3 = *(this + 2) == &vp::vx::data_flow::Value::type_id<std::vector<long long>>(void)::s_type_id;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v4 = result;
    result = vp::vx::data_flow::Value::view_storage(this);
    if (result)
    {
      v5 = *(v4 + 32);
      if (!v5)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      v6 = *(*v5 + 48);

      return v6();
    }
  }

  return result;
}

BOOL vp::vx::data_flow::Value::Type_ID_Eraser<std::vector<long long>>::compare_value(uint64_t a1, const void ***a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = **a2;
  v5 = (*a2)[1] - v4;
  return v5 == *(v3 + 8) - *v3 && memcmp(v4, *v3, v5) == 0;
}

void vp::vx::data_flow::Value::Type_ID_Eraser<std::vector<long long>>::destroy_value(uint64_t a1, void ***a2)
{
  v2 = **a2;
  if (v2)
  {
    (*a2)[1] = v2;
    operator delete(v2);
  }
}

__n128 vp::vx::data_flow::Value::Type_ID_Eraser<std::vector<long long>>::move_value(uint64_t a1, __n128 **a2, __n128 **a3)
{
  v3 = *a2;
  v4 = *a3;
  v3->n128_u64[0] = 0;
  v3->n128_u64[1] = 0;
  v3[1].n128_u64[0] = 0;
  result = *v4;
  *v3 = *v4;
  v3[1].n128_u64[0] = v4[1].n128_u64[0];
  v4->n128_u64[0] = 0;
  v4->n128_u64[1] = 0;
  v4[1].n128_u64[0] = 0;
  return result;
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<std::vector<long long>>::copy_value(uint64_t a1, void **a2, uint64_t **a3)
{
  v3 = *a2;
  v4 = *a3;
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  return std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v3, *v4, v4[1], (v4[1] - *v4) >> 3);
}

uint64_t std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<long long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2725C404C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<std::vector<long long>>::view_storage(uint64_t a1, uint64_t a2)
{
  return *a2;
}

{
  return *a2;
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<std::vector<long long>>::allocate_storage(uint64_t a1, uint64_t *a2, void *a3)
{
  result = (*(**a3 + 16))(*a3, 24, 8);
  *a2 = result;
  return result;
}

void std::__function::__func<vp::vx::data_flow::State<std::vector<long long>>::register_listener(std::function<void ()(std::vector<long long> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<std::vector<long long>>::register_listener(std::function<void ()(std::vector<long long> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(std::vector<long long> const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<vp::vx::data_flow::State<std::vector<long long>>::register_listener(std::function<void ()(std::vector<long long> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<std::vector<long long>>::register_listener(std::function<void ()(std::vector<long long> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B2D30;
  std::__function::__value_func<void ()(std::vector<long long> const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<vp::vx::data_flow::State<std::vector<long long>>::register_listener(std::function<void ()(std::vector<long long> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<std::vector<long long>>::register_listener(std::function<void ()(std::vector<long long> const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B2D30;
  std::__function::__value_func<void ()(std::vector<long long> const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<vp::vx::components::Audio_Data_Analysis::register_listeners(void)::$_0,std::allocator<vp::vx::components::Audio_Data_Analysis::register_listeners(void)::$_0>,void ()(std::vector<long long> const&)>::operator()(void *a1, uint64_t a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a1[3];
  if (v3)
  {
    v5 = a1[1];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      v8 = a1[2];
      if (v8)
      {
        v9 = (*(*v8 + 24))(v8, a2);
        if ((v9 & 1) == 0)
        {
          log = vp::get_log(v9);
          if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
          {
            log_context_info = vp::get_log_context_info(__p, v5, "vp::vx::components::Audio_Data_Analysis]", 39);
            v12 = v21;
            v13 = v21;
            v14 = __p[1];
            v15 = vp::get_log(log_context_info);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              if (v13 >= 0)
              {
                v16 = v12;
              }

              else
              {
                v16 = v14;
              }

              v17 = __p[0];
              if (v13 >= 0)
              {
                v17 = __p;
              }

              if (v16)
              {
                v18 = " ";
              }

              else
              {
                v18 = "";
              }

              *buf = 136315394;
              v23 = v17;
              v24 = 2080;
              v25 = v18;
              _os_log_impl(&dword_2724B4000, v15, OS_LOG_TYPE_DEFAULT, "%s%sfailed to update audio data analysis client reporter IDs", buf, 0x16u);
              LOBYTE(v13) = v21;
            }

            if ((v13 & 0x80) != 0)
            {
              operator delete(__p[0]);
            }
          }
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

void std::__function::__func<vp::vx::components::Audio_Data_Analysis::register_listeners(void)::$_0,std::allocator<vp::vx::components::Audio_Data_Analysis::register_listeners(void)::$_0>,void ()(std::vector<long long> const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<vp::vx::components::Audio_Data_Analysis::register_listeners(void)::$_0,std::allocator<vp::vx::components::Audio_Data_Analysis::register_listeners(void)::$_0>,void ()(std::vector<long long> const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t std::__function::__func<vp::vx::components::Audio_Data_Analysis::register_listeners(void)::$_0,std::allocator<vp::vx::components::Audio_Data_Analysis::register_listeners(void)::$_0>,void ()(std::vector<long long> const&)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881B2D78;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<vp::vx::components::Audio_Data_Analysis::register_listeners(void)::$_0,std::allocator<vp::vx::components::Audio_Data_Analysis::register_listeners(void)::$_0>,void ()(std::vector<long long> const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B2D78;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<vp::vx::components::Audio_Data_Analysis::register_listeners(void)::$_0,std::allocator<vp::vx::components::Audio_Data_Analysis::register_listeners(void)::$_0>,void ()(std::vector<long long> const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B2D78;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t std::__shared_ptr_pointer<vp::services::Audio_Data_Analysis::Client  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<vp::services::Audio_Data_Analysis::Client  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743CBFA0);
}

void vp::vx::components::Audio_Data_Analysis::configure(vp::vx::components::Audio_Data_Analysis *this)
{
  v71 = *MEMORY[0x277D85DE8];
  log = vp::get_log(this);
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    log_context_info = vp::get_log_context_info(&__p, this, "vp::vx::components::Audio_Data_Analysis]", 39);
    v4 = v69[15];
    v5 = v69[15];
    v6 = *v69;
    v7 = vp::get_log(log_context_info);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      if (v5 >= 0)
      {
        v8 = v4;
      }

      else
      {
        v8 = v6;
      }

      p_p = __p;
      if (v5 >= 0)
      {
        p_p = &__p;
      }

      if (v8)
      {
        v10 = " ";
      }

      else
      {
        v10 = "";
      }

      *buf = 136315394;
      *&buf[4] = p_p;
      *&buf[12] = 2080;
      *&buf[14] = v10;
      _os_log_impl(&dword_2724B4000, v7, OS_LOG_TYPE_INFO, "%s%sconfigure", buf, 0x16u);
      LOBYTE(v5) = v69[15];
    }

    if ((v5 & 0x80) != 0)
    {
      operator delete(__p);
    }
  }

  v12 = *(this + 14);
  v11 = *(this + 15);
  if (!v11)
  {
    if (v12)
    {
      goto LABEL_18;
    }

LABEL_107:
    _os_crash();
    __break(1u);
    goto LABEL_108;
  }

  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  if (!v12)
  {
    goto LABEL_107;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v11);
LABEL_18:
  v13 = *(this + 3);
  if (!v13 || (v14 = std::__shared_weak_count::lock(v13)) == 0 || (v15 = v14, v16 = *(this + 2), atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed), !v16))
  {
    _os_crash();
    __break(1u);
    goto LABEL_119;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  v17 = *(this + 5);
  if (!v17 || (v18 = std::__shared_weak_count::lock(v17), (v19 = v18) == 0) || (v20 = *(this + 4), atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed), !v20))
  {
LABEL_119:
    _os_crash();
    __break(1u);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  (*(*v20 + 16))(&__p, v20, 72);
  *buf = __p;
  *&buf[8] = *v69;
  *v69 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&__p);
  vp::vx::data_flow::State<void>::~State(this + 12);
  *(this + 12) = *buf;
  *(this + 56) = *&buf[8];
  *&buf[8] = 0;
  *&buf[16] = 0;
  vp::vx::data_flow::State<void>::~State(buf);
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v20 + 16))(&__p, v20, 58);
  LODWORD(v58) = __p;
  v59 = *v69;
  *v69 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&__p);
  __p = &unk_2881B2CB0;
  *v69 = v12;
  *&v69[8] = v11;
  *&v69[16] = &__p;
  v21 = *(this + 12);
  v65 = v58;
  v66 = v21;
  vp::vx::data_flow::State_Manager::create_state(buf, (v16 + 48), &__p);
  LODWORD(v61) = *buf;
  *cf = *&buf[8];
  *&buf[8] = 0;
  *&buf[16] = 0;
  vp::vx::data_flow::State<void>::~State(buf);
  std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&__p);
  LODWORD(__p) = v61;
  *v69 = *cf;
  cf[0] = 0;
  cf[1] = 0;
  vp::vx::data_flow::State<void>::~State(&v61);
  vp::vx::data_flow::State<void>::~State(this + 20);
  *(this + 20) = __p;
  *(this + 88) = *v69;
  *v69 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&__p);
  vp::vx::data_flow::State<void>::~State(&v58);
  v22 = *(this + 1);
  __p = 0;
  *v69 = v22;
  *&v69[8] = xmmword_272756560;
  v23 = (*(*v22 + 16))(v22, 88, 8);
  *(v23 + 72) = 0u;
  *(v23 + 56) = 0u;
  *(v23 + 40) = 0u;
  *(v23 + 24) = 0u;
  *(v23 + 8) = 0;
  *(v23 + 16) = 0;
  *v23 = &unk_2881B30B0;
  default_resource = std::pmr::get_default_resource(v23);
  *(v23 + 24) = default_resource;
  *(v23 + 32) = 0;
  *(v23 + 40) = 0;
  *(v23 + 48) = 0;
  *(v23 + 56) = std::pmr::get_default_resource(default_resource);
  *(v23 + 64) = 0;
  *(v23 + 72) = 0;
  *(v23 + 80) = 0;
  std::unique_ptr<vp::vx::components::Audio_Data_Analysis::Node_Decorator_Factory,vp::Allocator_Delete<vp::vx::components::Audio_Data_Analysis::Node_Decorator_Factory>>::reset[abi:ne200100](&__p, v23);
  v65 = 42;
  applesauce::CF::StringRef::from_get(&v67, @"epout");
  v25 = __p;
  v26 = *(__p + 8);
  v27 = *(__p + 9);
  if (!v26 && v27)
  {
LABEL_108:
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v28 = *(__p + 8);
  if (v27)
  {
    v28 = *(__p + 8);
    v29 = *(__p + 9);
    do
    {
      if (v29 != 1 && !v28)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      if (!v28)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      v30 = v29 >> 1;
      v31 = &v28[6 * (v29 >> 1)];
      if (*v31 >= 2)
      {
        v32 = 1;
      }

      else
      {
        v32 = 255;
      }

      if (*v31 == 2)
      {
        v32 = v31[1] != 0;
      }

      v33 = v31 + 6;
      v29 += ~v30;
      if (v32 < 0x80)
      {
        v29 = v30;
      }

      else
      {
        v28 = v33;
      }
    }

    while (v29);
  }

  v34 = &v26[6 * v27];
  if (v28 != v34)
  {
    if (!v28)
    {
      __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
    }

    if (*v28 <= 2)
    {
      v35 = 1;
    }

    else
    {
      v35 = 255;
    }

    if (*v28 == 2)
    {
      if (!v28[1])
      {
        goto LABEL_91;
      }
    }

    else if (v35 < 0x80)
    {
      goto LABEL_91;
    }
  }

  v58 = 0;
  *&v59 = 0;
  v61 = 2;
  LODWORD(cf[0]) = 0;
  *buf = 2;
  *&buf[8] = 0;
  *&buf[16] = 0;
  v36 = v26 > v28 || v28 > v34;
  cf[1] = 0;
  if (v36)
  {
    v54 = "this->priv_in_range_or_end(hint)";
    v55 = 879;
    v56 = "flat_tree.hpp";
    v57 = "insert_unique";
    goto LABEL_114;
  }

  v63 = 0;
  if (v28 == v34)
  {
    v38 = v34;
  }

  else
  {
    if (!v28)
    {
      __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
    }

    v37 = 255;
    if (*v28 <= 2)
    {
      v37 = 1;
    }

    if (*v28 == 2)
    {
      v38 = v28;
      if (!v28[1])
      {
LABEL_64:
        v64 = v34;
        if ((boost::container::dtl::flat_tree<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,vp::vx::components::Audio_Data_Analysis::Node_Decorator::Tap_Point>,boost::container::dtl::select1st<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>>,std::less<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>>,vp::Allocator<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,vp::vx::components::Audio_Data_Analysis::Node_Decorator::Tap_Point>>>::priv_insert_unique_prepare(v28, &v64, 2u, 0, &v63) & 1) == 0)
        {
          goto LABEL_84;
        }

        goto LABEL_73;
      }
    }

    else
    {
      v38 = v28;
      if (v37 < 0x80)
      {
        goto LABEL_64;
      }
    }
  }

  v63 = v28;
  if (v38 == v26)
  {
    goto LABEL_73;
  }

  if (!v38)
  {
    __assert_rtn("operator--", "vector.hpp", 174, "!!m_ptr");
  }

  v39 = *(v38 - 6);
  if (v39 != 2)
  {
    if (v39 < 2)
    {
      goto LABEL_73;
    }

    goto LABEL_72;
  }

  if (*(v38 - 5))
  {
LABEL_72:
    v64 = v38 - 6;
    if (!boost::container::dtl::flat_tree<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,vp::vx::components::Audio_Data_Analysis::Node_Decorator::Tap_Point>,boost::container::dtl::select1st<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>>,std::less<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>>,vp::Allocator<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,vp::vx::components::Audio_Data_Analysis::Node_Decorator::Tap_Point>>>::priv_insert_unique_prepare(v26, &v64, 2u, 0, &v63))
    {
      goto LABEL_84;
    }

LABEL_73:
    v28 = v63;
    v40 = *(v25 + 8);
    if (v40 > v63)
    {
      goto LABEL_111;
    }

    v41 = *(v25 + 9);
    if (!v40 && v41)
    {
      __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
    }

    v42 = v40 + 24 * v41;
    if (v63 > v42)
    {
LABEL_111:
      v54 = "this->priv_in_range_or_end(position)";
      v55 = 1862;
      v56 = "vector.hpp";
      v57 = "emplace";
    }

    else
    {
      v43 = *(v25 + 10);
      if (v43 >= v41)
      {
        if (v43 == v41)
        {
          boost::container::vector<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,vp::vx::components::Audio_Data_Analysis::Node_Decorator::Tap_Point>,vp::Allocator<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,vp::vx::components::Audio_Data_Analysis::Node_Decorator::Tap_Point>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<vp::Allocator<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,vp::vx::components::Audio_Data_Analysis::Node_Decorator::Tap_Point>>,boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,vp::vx::components::Audio_Data_Analysis::Node_Decorator::Tap_Point>*,boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,vp::vx::components::Audio_Data_Analysis::Node_Decorator::Tap_Point>>>(&v60, v25 + 56, v63, buf);
          v28 = v60;
        }

        else if (v42 == v63)
        {
          *v42 = *buf;
          *(v42 + 8) = *&buf[8];
          *(v42 + 16) = *&buf[16];
          *&buf[16] = 0;
          ++*(v25 + 9);
        }

        else
        {
          v44 = v42 - 24;
          v45 = *(v42 - 24);
          *(v42 + 8) = *(v42 - 16);
          *(v42 + 16) = *(v42 - 8);
          *(v42 - 8) = 0;
          *v42 = v45;
          ++*(v25 + 9);
          if ((v42 - 24) != v28)
          {
            v46 = (v42 - 24);
            do
            {
              v47 = *(v46 - 3);
              v46 -= 6;
              *(v44 + 8) = *(v44 - 16);
              v48 = *(v44 + 16);
              *(v44 + 16) = *(v44 - 8);
              *(v44 - 8) = v48;
              *v44 = v47;
              v44 = v46;
            }

            while (v46 != v28);
          }

          *v28 = *buf;
          v28[1] = *&buf[4];
          v28[2] = *&buf[8];
          v49 = *(v28 + 2);
          *(v28 + 2) = *&buf[16];
          *&buf[16] = v49;
        }

        goto LABEL_88;
      }

      v54 = "this->m_holder.capacity() >= this->m_holder.m_size";
      v55 = 2821;
      v56 = "vector.hpp";
      v57 = "priv_insert_forward_range";
    }

LABEL_114:
    __assert_rtn(v57, v56, v55, v54);
  }

  v63 = v38 - 6;
LABEL_84:
  v28 = v63;
  if (!*(v25 + 8) && v63)
  {
    __assert_rtn("operator+", "vector.hpp", 188, "x.m_ptr || !off");
  }

LABEL_88:
  std::pmr::polymorphic_allocator<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,vp::vx::components::Audio_Data_Analysis::Node_Decorator::Tap_Point>>::destroy[abi:ne200100]<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,vp::vx::components::Audio_Data_Analysis::Node_Decorator::Tap_Point>>(*&buf[16]);
  if (cf[1])
  {
    CFRelease(cf[1]);
  }

  if (!v28)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

LABEL_91:
  v28[2] = v65;
  v50 = *(v28 + 2);
  v51 = v67;
  *(v28 + 2) = v67;
  if (v51)
  {
    CFRetain(v51);
  }

  if (v50)
  {
    CFRelease(v50);
  }

  if (__p)
  {
    operator new();
  }

  __p = 0;
  v52 = *(this + 19);
  *(this + 9) = 0u;
  if (v52)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v52);
  }

  if (v67)
  {
    CFRelease(v67);
  }

  std::unique_ptr<vp::vx::components::Audio_Data_Analysis::Node_Decorator_Factory,vp::Allocator_Delete<vp::vx::components::Audio_Data_Analysis::Node_Decorator_Factory>>::reset[abi:ne200100](&__p, 0);
  std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  v53 = *MEMORY[0x277D85DE8];
}

void sub_2725C508C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, char a21)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t std::unique_ptr<vp::vx::components::Audio_Data_Analysis::Node_Decorator_Factory,vp::Allocator_Delete<vp::vx::components::Audio_Data_Analysis::Node_Decorator_Factory>>::reset[abi:ne200100](uint64_t result, uint64_t a2)
{
  v3 = *result;
  *result = a2;
  if (v3)
  {
    return vp::Allocator_Delete<vp::vx::components::Audio_Data_Analysis::Node_Decorator_Factory>::operator()((result + 8), v3);
  }

  return result;
}

void vp::vx::components::Audio_Data_Analysis::Node_Decorator::Tap_Point::~Tap_Point(vp::vx::components::Audio_Data_Analysis::Node_Decorator::Tap_Point *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t vp::Allocator_Delete<vp::vx::components::Audio_Data_Analysis::Node_Decorator_Factory>::operator()(void *a1, void *a2)
{
  boost::container::vector<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,vp::vx::components::Audio_Data_Analysis::Node_Decorator::Tap_Point>,vp::Allocator<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,vp::vx::components::Audio_Data_Analysis::Node_Decorator::Tap_Point>>,void>::~vector(a2 + 7);
  boost::container::vector<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,vp::vx::components::Audio_Data_Analysis::Node_Decorator::Tap_Point>,vp::Allocator<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,vp::vx::components::Audio_Data_Analysis::Node_Decorator::Tap_Point>>,void>::~vector(a2 + 3);
  v4 = a2[2];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = a1[1];
  v6 = a1[2];
  v7 = *(**a1 + 24);

  return v7();
}

void *boost::container::vector<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,vp::vx::components::Audio_Data_Analysis::Node_Decorator::Tap_Point>,vp::Allocator<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,vp::vx::components::Audio_Data_Analysis::Node_Decorator::Tap_Point>>,void>::~vector(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = (a1[1] + 16);
    do
    {
      --v2;
      v4 = *v3;
      v3 += 3;
      std::pmr::polymorphic_allocator<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,vp::vx::components::Audio_Data_Analysis::Node_Decorator::Tap_Point>>::destroy[abi:ne200100]<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,vp::vx::components::Audio_Data_Analysis::Node_Decorator::Tap_Point>>(v4);
    }

    while (v2);
  }

  v5 = a1[3];
  if (v5)
  {
    (*(**a1 + 24))(*a1, a1[1], 24 * v5, 8);
  }

  return a1;
}

void std::pmr::polymorphic_allocator<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,vp::vx::components::Audio_Data_Analysis::Node_Decorator::Tap_Point>>::destroy[abi:ne200100]<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,vp::vx::components::Audio_Data_Analysis::Node_Decorator::Tap_Point>>(const void *a1)
{
  if (a1)
  {
    CFRelease(a1);
  }
}

void std::__shared_ptr_pointer<vp::vx::components::Audio_Data_Analysis::Node_Decorator_Factory *,vp::Allocator_Delete<vp::vx::components::Audio_Data_Analysis::Node_Decorator_Factory>,std::allocator<vp::vx::components::Audio_Data_Analysis::Node_Decorator_Factory>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743CBFA0);
}

void *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF9StringRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components19Audio_Data_Analysis9configureEvE3__0JNS3_14Operation_ModeENS_6vectorIxNS_9allocatorIxEEEEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSG_SK_EEERNS4_13State_ManagerESM_ST_EUlPPKNS4_5ValueEPS11_E_NSI_IS16_EEFvS14_S15_EEclEOS14_OS15_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = **a2;
  if (v6[2] == &vp::vx::data_flow::Value::type_id<vp::vx::Operation_Mode>(void)::s_type_id)
  {
    v7 = vp::vx::data_flow::Value::view_storage(v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = v4[1];
  if (v8[2] == &vp::vx::data_flow::Value::type_id<std::vector<long long>>(void)::s_type_id)
  {
    v9 = vp::vx::data_flow::Value::view_storage(v8);
  }

  else
  {
    v9 = 0;
  }

  v10 = *v7;
  if (*v7 > 6)
  {
    goto LABEL_34;
  }

  if (((1 << v10) & 0x62) != 0)
  {
    v11 = @"com.apple.mobilephone";
    goto LABEL_12;
  }

  if (((1 << v10) & 0x14) != 0)
  {
    v11 = @"com.apple.facetime";
LABEL_12:
    applesauce::CF::StringRef::from_get(&v22, v11);
    goto LABEL_13;
  }

  if (v10)
  {
LABEL_34:
    v22 = 0;
    goto LABEL_13;
  }

  v14 = *(*(a1 + 8) + 8);
  vp::Service::get_service_provider(v14);
  vp::Service_Provider::get<vp::services::Audio_Statistics,(decltype(nullptr))0>(&v26, v14);
  if (v26)
  {
    v15 = *v9;
    v16 = v9[1];
    if (*v9 != v16)
    {
      v17 = 0;
      while (1)
      {
        v18 = *v15;
        v19 = v26;
        if (((*(*v26 + 32))(v26, *v15) & 0xFFFFFFFD) != 0)
        {
          v20 = v17;
          goto LABEL_32;
        }

        (*(*v19 + 40))(&v25, v19, v18);
        if (v25)
        {
          cf = 0;
          applesauce::CF::at_or<applesauce::CF::StringRef,char const(&)[25]>(&v24, v25, "HostApplicationDisplayID", &cf);
          v20 = v24;
          v24 = v17;
          if (v17)
          {
            CFRelease(v17);
          }

          if (cf)
          {
            CFRelease(cf);
          }

          if (v20)
          {
            v21 = 0;
            goto LABEL_29;
          }

          v17 = 0;
        }

        v21 = 1;
        v20 = v17;
LABEL_29:
        if (v25)
        {
          CFRelease(v25);
        }

        if (!v21)
        {
          goto LABEL_36;
        }

LABEL_32:
        ++v15;
        v17 = v20;
        if (v15 == v16)
        {
          goto LABEL_36;
        }
      }
    }
  }

  v20 = 0;
LABEL_36:
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  v22 = v20;
LABEL_13:
  vp::vx::data_flow::Value::~Value(v5);
  *v5 = std::pmr::get_default_resource(v12);
  *(v5 + 1) = 0;
  *(v5 + 2) = &vp::vx::data_flow::Value::type_id<applesauce::CF::StringRef>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v5);
  *result = v22;
  return result;
}

uint64_t vp::Service::get_service_provider(uint64_t this)
{
  v2 = *MEMORY[0x277D85DE8];
  if (!this)
  {
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v1 = *MEMORY[0x277D85DE8];
  return this;
}

void sub_2725C56BC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void *vp::Service_Provider::get<vp::services::Audio_Statistics,(decltype(nullptr))0>(void *a1, uint64_t a2)
{
  result = boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,std::unique_ptr<vp::Service>>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::small_vector<boost::container::dtl::pair<unsigned int,std::unique_ptr<vp::Service>>,16ul,vp::Allocator<boost::container::dtl::pair<unsigned int,std::unique_ptr<vp::Service>>>,void>>::find(&v11, a2 + 16, &vp::Service_Interface<1634956403u>::k_service_type_id);
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  if (v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6 == 0;
  }

  if (!v7)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v8 = v11;
  if (v11 == (v5 + 16 * v6))
  {
    *a1 = 0;
    a1[1] = 0;
  }

  else
  {
    result = std::shared_ptr<vp::Service_Provider const>::shared_ptr[abi:ne200100]<vp::Service_Provider,0>(v10, *a2, *(a2 + 8));
    v9 = v10[1];
    *a1 = *(v8 + 1);
    a1[1] = v9;
  }

  return result;
}

void applesauce::CF::at_or<applesauce::CF::StringRef,char const(&)[25]>(void *a1, const __CFDictionary *a2, char *__s, void *a4)
{
  v8 = strlen(__s);
  v9 = CFStringCreateWithBytes(0, __s, v8, 0x8000100u, 0);
  cf = v9;
  if (!v9)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  Value = CFDictionaryGetValue(a2, v9);
  CFRelease(cf);
  if (Value)
  {
    CFRetain(Value);
    v11 = CFGetTypeID(Value);
    if (v11 == CFStringGetTypeID())
    {
      CFRetain(Value);
      *a1 = Value;
      CFRelease(Value);
      return;
    }

    CFRelease(Value);
  }

  *a1 = *a4;
  *a4 = 0;
}

void sub_2725C5898(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2725C5830);
}

void *boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,std::unique_ptr<vp::Service>>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::small_vector<boost::container::dtl::pair<unsigned int,std::unique_ptr<vp::Service>>,16ul,vp::Allocator<boost::container::dtl::pair<unsigned int,std::unique_ptr<vp::Service>>>,void>>::find(unsigned int **a1, uint64_t a2, unsigned int *a3)
{
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  v15 = v3;
  if (v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4 == 0;
  }

  if (!v5)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  result = boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,std::unique_ptr<vp::Service>>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::small_vector<boost::container::dtl::pair<unsigned int,std::unique_ptr<vp::Service>>,16ul,vp::Allocator<boost::container::dtl::pair<unsigned int,std::unique_ptr<vp::Service>>>,void>>::priv_lower_bound<boost::container::vec_iterator<boost::container::dtl::pair<unsigned int,std::unique_ptr<vp::Service>>*,true>,unsigned int>(a1, &v15, v3 + 16 * v4, *a3);
  v10 = *(a2 + 8);
  v11 = *(a2 + 16);
  if (v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = v11 == 0;
  }

  if (!v12)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v13 = (v10 + 16 * v11);
  v14 = *a1;
  if (*a1 != v13)
  {
    if (!v14)
    {
      __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
    }

    if (*a3 < *v14)
    {
      *a1 = v13;
    }
  }

  return result;
}

void *std::shared_ptr<vp::Service_Provider const>::shared_ptr[abi:ne200100]<vp::Service_Provider,0>(void *a1, uint64_t a2, std::__shared_weak_count *this)
{
  *a1 = a2;
  if (!this)
  {
    a1[1] = 0;
LABEL_5:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v4 = std::__shared_weak_count::lock(this);
  a1[1] = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

  return a1;
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<vp::vx::Operation_Mode>::view_storage(uint64_t a1, uint64_t a2)
{
  return a2;
}

{
  return a2;
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF9StringRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components19Audio_Data_Analysis9configureEvE3__0JNS3_14Operation_ModeENS_6vectorIxNS_9allocatorIxEEEEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSG_SK_EEERNS4_13State_ManagerESM_ST_EUlPPKNS4_5ValueEPS11_E_NSI_IS16_EEFvS14_S15_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF9StringRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components19Audio_Data_Analysis9configureEvE3__0JNS3_14Operation_ModeENS_6vectorIxNS_9allocatorIxEEEEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSG_SK_EEERNS4_13State_ManagerESM_ST_EUlPPKNS4_5ValueEPS11_E_NSI_IS16_EEFvS14_S15_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF9StringRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components19Audio_Data_Analysis9configureEvE3__0JNS3_14Operation_ModeENS_6vectorIxNS_9allocatorIxEEEEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSG_SK_EEERNS4_13State_ManagerESM_ST_EUlPPKNS4_5ValueEPS11_E_NSI_IS16_EEFvS14_S15_EE7__cloneEPNS0_6__baseIS18_EE(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881B2CB0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF9StringRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components19Audio_Data_Analysis9configureEvE3__0JNS3_14Operation_ModeENS_6vectorIxNS_9allocatorIxEEEEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSG_SK_EEERNS4_13State_ManagerESM_ST_EUlPPKNS4_5ValueEPS11_E_NSI_IS16_EEFvS14_S15_EED0Ev(void *a1)
{
  *a1 = &unk_2881B2CB0;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF9StringRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components19Audio_Data_Analysis9configureEvE3__0JNS3_14Operation_ModeENS_6vectorIxNS_9allocatorIxEEEEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSG_SK_EEERNS4_13State_ManagerESM_ST_EUlPPKNS4_5ValueEPS11_E_NSI_IS16_EEFvS14_S15_EED1Ev(void *a1)
{
  *a1 = &unk_2881B2CB0;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void vp::vx::components::Audio_Data_Analysis::set_state_owner(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v4 = *(a1 + 40);
  *(a1 + 32) = v3;
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

void vp::vx::components::Audio_Data_Analysis::set_state_manager(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v4 = *(a1 + 24);
  *(a1 + 16) = v3;
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

void vp::vx::components::Audio_Data_Analysis::~Audio_Data_Analysis(vp::vx::components::Audio_Data_Analysis *this)
{
  vp::vx::components::Audio_Data_Analysis::~Audio_Data_Analysis(this);

  JUMPOUT(0x2743CBFA0);
}

{
  v25 = *MEMORY[0x277D85DE8];
  vp::vx::components::Audio_Data_Analysis::unregister_listeners(this);
  vp::vx::components::Audio_Data_Analysis::destroy_audio_data_analysis_client(this);
  log = vp::get_log(v2);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    log_context_info = vp::get_log_context_info(__p, this, "vp::vx::components::Audio_Data_Analysis]", 39);
    v5 = v20;
    v6 = v20;
    v7 = __p[1];
    v8 = vp::get_log(log_context_info);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      if (v6 >= 0)
      {
        v9 = v5;
      }

      else
      {
        v9 = v7;
      }

      v10 = __p[0];
      if (v6 >= 0)
      {
        v10 = __p;
      }

      if (v9)
      {
        v11 = " ";
      }

      else
      {
        v11 = "";
      }

      *buf = 136315394;
      v22 = v10;
      v23 = 2080;
      v24 = v11;
      _os_log_impl(&dword_2724B4000, v8, OS_LOG_TYPE_DEBUG, "%s%sdestroyed", buf, 0x16u);
      LOBYTE(v6) = v20;
    }

    if ((v6 & 0x80) != 0)
    {
      operator delete(__p[0]);
    }
  }

  v12 = *(this + 21);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v13 = *(this + 19);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  v14 = *(this + 17);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  v15 = *(this + 15);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  vp::vx::data_flow::State<void>::~State(this + 20);
  vp::vx::data_flow::State<void>::~State(this + 12);
  v16 = *(this + 5);
  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  v17 = *(this + 3);
  if (v17)
  {
    std::__shared_weak_count::__release_weak(v17);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void virtual thunk tovp::vx::components::Audio_Data_Analysis::Node_Decorator::~Node_Decorator(vp::vx::components::Audio_Data_Analysis::Node_Decorator *this)
{
  v1 = (this + *(*this - 24));
  v2 = v1[16];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  boost::container::vector<boost::container::dtl::pair<unsigned int,vp::vx::components::Audio_Data_Analysis::Node_Decorator::Tap_Point>,vp::Allocator<boost::container::dtl::pair<unsigned int,vp::vx::components::Audio_Data_Analysis::Node_Decorator::Tap_Point>>,void>::~vector(v1 + 11);
  boost::container::vector<boost::container::dtl::pair<unsigned int,vp::vx::components::Audio_Data_Analysis::Node_Decorator::Tap_Point>,vp::Allocator<boost::container::dtl::pair<unsigned int,vp::vx::components::Audio_Data_Analysis::Node_Decorator::Tap_Point>>,void>::~vector(v1 + 7);
  v3 = v1[6];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  *v1 = off_2881B2F38;
  v1[17] = off_2881B2FD0;
  std::unique_ptr<vp::vx::io::Node,vp::Allocator_Delete<vp::vx::io::Node>>::reset[abi:ne200100](v1 + 1, 0);
  v1[17] = &unk_2881C6630;
  v4 = v1[19];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  v1 = (this + *(*this - 24));
  v2 = v1[16];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  boost::container::vector<boost::container::dtl::pair<unsigned int,vp::vx::components::Audio_Data_Analysis::Node_Decorator::Tap_Point>,vp::Allocator<boost::container::dtl::pair<unsigned int,vp::vx::components::Audio_Data_Analysis::Node_Decorator::Tap_Point>>,void>::~vector(v1 + 11);
  boost::container::vector<boost::container::dtl::pair<unsigned int,vp::vx::components::Audio_Data_Analysis::Node_Decorator::Tap_Point>,vp::Allocator<boost::container::dtl::pair<unsigned int,vp::vx::components::Audio_Data_Analysis::Node_Decorator::Tap_Point>>,void>::~vector(v1 + 7);
  v3 = v1[6];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  *v1 = off_2881B2F38;
  v1[17] = off_2881B2FD0;
  std::unique_ptr<vp::vx::io::Node,vp::Allocator_Delete<vp::vx::io::Node>>::reset[abi:ne200100](v1 + 1, 0);
  v1[17] = &unk_2881C6630;
  v4 = v1[19];
  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void *boost::container::vector<boost::container::dtl::pair<unsigned int,vp::vx::components::Audio_Data_Analysis::Node_Decorator::Tap_Point>,vp::Allocator<boost::container::dtl::pair<unsigned int,vp::vx::components::Audio_Data_Analysis::Node_Decorator::Tap_Point>>,void>::~vector(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = (a1[1] + 16);
    do
    {
      --v2;
      v4 = *v3;
      v3 += 3;
      std::pmr::polymorphic_allocator<boost::container::dtl::pair<unsigned int,vp::vx::components::Audio_Data_Analysis::Node_Decorator::Tap_Point>>::destroy[abi:ne200100]<boost::container::dtl::pair<unsigned int,vp::vx::components::Audio_Data_Analysis::Node_Decorator::Tap_Point>>(v4);
    }

    while (v2);
  }

  v5 = a1[3];
  if (v5)
  {
    (*(**a1 + 24))(*a1, a1[1], 24 * v5, 8);
  }

  return a1;
}

void *std::unique_ptr<vp::vx::io::Node,vp::Allocator_Delete<vp::vx::io::Node>>::reset[abi:ne200100](void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = result;
    (*(*v2 + 112))(v2);
    return (*(*v3[1] + 24))(v3[1], v2, v3[2], v3[3]);
  }

  return result;
}

void virtual thunk tovp::vx::io::Node_Decorator::~Node_Decorator(vp::vx::io::Node_Decorator *this)
{
  v1 = (this + *(*this - 24));
  *v1 = &unk_2881B9B90;
  v1[5] = &unk_2881B9C28;
  std::unique_ptr<vp::vx::io::Node,vp::Allocator_Delete<vp::vx::io::Node>>::reset[abi:ne200100](v1 + 1, 0);
  v1[5] = &unk_2881C6630;
  v2 = v1[7];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  v1 = (this + *(*this - 24));
  *v1 = &unk_2881B9B90;
  v1[5] = &unk_2881B9C28;
  std::unique_ptr<vp::vx::io::Node,vp::Allocator_Delete<vp::vx::io::Node>>::reset[abi:ne200100](v1 + 1, 0);
  v1[5] = &unk_2881C6630;
  v2 = v1[7];
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void vp::vx::io::Node_Decorator::~Node_Decorator(vp::vx::io::Node_Decorator *this)
{
  *this = &unk_2881B9B90;
  *(this + 5) = &unk_2881B9C28;
  std::unique_ptr<vp::vx::io::Node,vp::Allocator_Delete<vp::vx::io::Node>>::reset[abi:ne200100](this + 1, 0);
  *(this + 5) = &unk_2881C6630;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  *this = &unk_2881B9B90;
  *(this + 5) = &unk_2881B9C28;
  std::unique_ptr<vp::vx::io::Node,vp::Allocator_Delete<vp::vx::io::Node>>::reset[abi:ne200100](this + 1, 0);
  *(this + 5) = &unk_2881C6630;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void std::pmr::polymorphic_allocator<boost::container::dtl::pair<unsigned int,vp::vx::components::Audio_Data_Analysis::Node_Decorator::Tap_Point>>::destroy[abi:ne200100]<boost::container::dtl::pair<unsigned int,vp::vx::components::Audio_Data_Analysis::Node_Decorator::Tap_Point>>(const void *a1)
{
  if (a1)
  {
    CFRelease(a1);
  }
}

uint64_t vp::vx::io::Node::as_property_controller(vp::vx::io::Node *this)
{
  return 0;
}

{
  return 0;
}

uint64_t vp::vx::io::Node::as_parameter_controller(vp::vx::io::Node *this)
{
  return 0;
}

{
  return 0;
}

void vp::vx::components::Audio_Data_Analysis::Node_Decorator::~Node_Decorator(vp::vx::components::Audio_Data_Analysis::Node_Decorator *this)
{
  v2 = *(this + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  boost::container::vector<boost::container::dtl::pair<unsigned int,vp::vx::components::Audio_Data_Analysis::Node_Decorator::Tap_Point>,vp::Allocator<boost::container::dtl::pair<unsigned int,vp::vx::components::Audio_Data_Analysis::Node_Decorator::Tap_Point>>,void>::~vector(this + 11);
  boost::container::vector<boost::container::dtl::pair<unsigned int,vp::vx::components::Audio_Data_Analysis::Node_Decorator::Tap_Point>,vp::Allocator<boost::container::dtl::pair<unsigned int,vp::vx::components::Audio_Data_Analysis::Node_Decorator::Tap_Point>>,void>::~vector(this + 7);
  v3 = *(this + 6);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  *this = off_2881B2F38;
  *(this + 17) = off_2881B2FD0;
  std::unique_ptr<vp::vx::io::Node,vp::Allocator_Delete<vp::vx::io::Node>>::reset[abi:ne200100](this + 1, 0);
  *(this + 17) = &unk_2881C6630;
  v4 = *(this + 19);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  v2 = *(this + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  boost::container::vector<boost::container::dtl::pair<unsigned int,vp::vx::components::Audio_Data_Analysis::Node_Decorator::Tap_Point>,vp::Allocator<boost::container::dtl::pair<unsigned int,vp::vx::components::Audio_Data_Analysis::Node_Decorator::Tap_Point>>,void>::~vector(this + 11);
  boost::container::vector<boost::container::dtl::pair<unsigned int,vp::vx::components::Audio_Data_Analysis::Node_Decorator::Tap_Point>,vp::Allocator<boost::container::dtl::pair<unsigned int,vp::vx::components::Audio_Data_Analysis::Node_Decorator::Tap_Point>>,void>::~vector(this + 7);
  v3 = *(this + 6);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  *this = off_2881B2F38;
  *(this + 17) = off_2881B2FD0;
  std::unique_ptr<vp::vx::io::Node,vp::Allocator_Delete<vp::vx::io::Node>>::reset[abi:ne200100](this + 1, 0);
  *(this + 17) = &unk_2881C6630;
  v4 = *(this + 19);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

uint64_t vp::vx::components::Audio_Data_Analysis::Node_Decorator::process(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, unsigned int a6)
{
  v7 = *(a1 + 64);
  v6 = *(a1 + 72);
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = v6 == 0;
  }

  if (!v8)
  {
    goto LABEL_32;
  }

  if (v6)
  {
    v14 = 24 * v6;
    do
    {
      if (!v7)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      v15 = *v7;
      if (a3 <= v15)
      {
        _os_crash();
        __break(1u);
LABEL_30:
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      if (((*(**(a1 + 40) + 48))(*(a1 + 40), v7[2], *(a2 + 24 * v15), *(a2 + 24 * v15 + 16), *(a2 + 24 * v15 + 8)) & 1) == 0)
      {
        v16 = _os_log_pack_size();
        message = caulk::deferred_logger::create_message(*(a1 + 120), v16 + 88, 16);
        if (message)
        {
          v18 = message;
          v19 = _os_log_pack_fill();
          v20 = *v7;
          *v19 = 67109120;
          v19[1] = v20;
          caulk::concurrent::messenger::enqueue(*(*(a1 + 120) + 16), v18);
        }
      }

      v7 += 6;
      v14 -= 24;
    }

    while (v14);
  }

  result = (*(**(a1 + 8) + 80))(*(a1 + 8), a2, a3, a4, a5, a6);
  v23 = *(a1 + 96);
  v22 = *(a1 + 104);
  if (v23)
  {
    v24 = 1;
  }

  else
  {
    v24 = v22 == 0;
  }

  if (!v24)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  if (v22)
  {
    v25 = 24 * v22;
    while (1)
    {
      if (!v23)
      {
        goto LABEL_30;
      }

      v26 = *v23;
      if (a5 <= v26)
      {
        break;
      }

      result = (*(**(a1 + 40) + 48))(*(a1 + 40), v23[2], *(a4 + 24 * v26), *(a4 + 24 * v26 + 16), *(a4 + 24 * v26 + 8));
      if ((result & 1) == 0)
      {
        v27 = _os_log_pack_size();
        result = caulk::deferred_logger::create_message(*(a1 + 120), v27 + 88, 16);
        if (result)
        {
          v28 = result;
          v29 = _os_log_pack_fill();
          v30 = *v23;
          *v29 = 67109120;
          v29[1] = v30;
          result = caulk::concurrent::messenger::enqueue(*(*(a1 + 120) + 16), v28);
        }
      }

      v23 += 6;
      v25 -= 24;
      if (!v25)
      {
        return result;
      }
    }

    _os_crash();
    __break(1u);
LABEL_32:
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  return result;
}

uint64_t vp::vx::components::Audio_Data_Analysis::Node_Decorator_Factory::new_node_decorator@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v32 = *MEMORY[0x277D85DE8];
  v22 = result;
  if (*(result + 8))
  {
    v9 = (*(**a3 + 24))();
    if (!v9 || (result = (**v9)(v9, 1633968493), (result & 1) == 0))
    {
      result = (*(**a3 + 40))();
      if (!result)
      {
        v12 = 0;
        for (i = 0; i != 2; ++i)
        {
          while (1)
          {
            v14 = v22 + 24 + 32 * (vp::domains(void)::s_domains[i] != 0);
            v15 = *(v14 + 8);
            v16 = *(v14 + 16);
            if (v15)
            {
              v17 = 1;
            }

            else
            {
              v17 = v16 == 0;
            }

            if (!v17)
            {
              __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
            }

            if (!v16)
            {
              break;
            }

            v18 = 24 * v16;
            while (1)
            {
              if (!v15)
              {
                __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
              }

              if (*v15 == a2)
              {
                break;
              }

              v15 += 6;
              v18 -= 24;
              if (!v18)
              {
                goto LABEL_17;
              }
            }

            ++i;
            v12 = 1;
            if (i == 2)
            {
              goto LABEL_22;
            }
          }

LABEL_17:
          ;
        }

        if (v12)
        {
LABEL_22:
          v31 = a4;
          v23[2] = 0;
          v23[3] = a4;
          v24 = xmmword_272756570;
          v19 = (*(*a4 + 16))(a4, 160, 8);
          v23[0] = v19;
          __p = v23;
          v26 = &v31;
          v27 = 0;
          v20 = *a3;
          *a3 = 0;
          v28 = v20;
          *v29 = *(a3 + 1);
          v30 = a3[3];
          v21 = *(v22 + 8);
          if (*(&v21 + 1))
          {
            atomic_fetch_add_explicit((*(&v21 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          *(v19 + 136) = &unk_2881C6630;
          operator new();
        }
      }
    }
  }

  v10 = *a3;
  *a3 = 0;
  *a5 = v10;
  *(a5 + 8) = *(a3 + 1);
  *(a5 + 24) = a3[3];
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2725C753C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, char a27)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void **std::unique_ptr<vp::vx::components::Audio_Data_Analysis::Node_Decorator,vp::Allocator_Delete<vp::vx::components::Audio_Data_Analysis::Node_Decorator>>::reset[abi:ne200100](void **result, void *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = result;
    v4 = v2[16];
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    boost::container::vector<boost::container::dtl::pair<unsigned int,vp::vx::components::Audio_Data_Analysis::Node_Decorator::Tap_Point>,vp::Allocator<boost::container::dtl::pair<unsigned int,vp::vx::components::Audio_Data_Analysis::Node_Decorator::Tap_Point>>,void>::~vector(v2 + 11);
    boost::container::vector<boost::container::dtl::pair<unsigned int,vp::vx::components::Audio_Data_Analysis::Node_Decorator::Tap_Point>,vp::Allocator<boost::container::dtl::pair<unsigned int,vp::vx::components::Audio_Data_Analysis::Node_Decorator::Tap_Point>>,void>::~vector(v2 + 7);
    v5 = v2[6];
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    *v2 = off_2881B2F38;
    v2[17] = off_2881B2FD0;
    std::unique_ptr<vp::vx::io::Node,vp::Allocator_Delete<vp::vx::io::Node>>::reset[abi:ne200100](v2 + 1, 0);
    v2[17] = &unk_2881C6630;
    v6 = v2[19];
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    return (*(*v3[1] + 24))(v3[1], v2, v3[2], v3[3]);
  }

  return result;
}

void *applesauce::CF::StringRef_proxy::StringRef_proxy(void *this, const applesauce::CF::StringRef *a2)
{
  *this = a2;
  if (!*a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
  }

  return this;
}

uint64_t boost::container::dtl::pair<unsigned int,vp::vx::components::Audio_Data_Analysis::Node_Decorator::Tap_Point>::~pair(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t boost::container::dtl::value_init<vp::vx::components::Audio_Data_Analysis::Node_Decorator::Tap_Point>::~value_init(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t boost::container::vector<boost::container::dtl::pair<unsigned int,vp::vx::components::Audio_Data_Analysis::Node_Decorator::Tap_Point>,vp::Allocator<boost::container::dtl::pair<unsigned int,vp::vx::components::Audio_Data_Analysis::Node_Decorator::Tap_Point>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<vp::Allocator<boost::container::dtl::pair<unsigned int,vp::vx::components::Audio_Data_Analysis::Node_Decorator::Tap_Point>>,boost::container::dtl::pair<unsigned int,vp::vx::components::Audio_Data_Analysis::Node_Decorator::Tap_Point>*,boost::container::dtl::pair<unsigned int,vp::vx::components::Audio_Data_Analysis::Node_Decorator::Tap_Point>>>(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 3);
  if (v4 != *(a2 + 2))
  {
    __assert_rtn("next_capacity", "vector.hpp", 473, "additional_objects > size_type(this->m_capacity - this->m_size)");
  }

  if (v4 == 0xAAAAAAAAAAAAAAALL)
  {
    goto LABEL_28;
  }

  if (v4 >> 61 > 4)
  {
    v5 = -1;
  }

  else
  {
    v5 = 8 * v4;
  }

  if (v4 >> 61)
  {
    v6 = v5;
  }

  else
  {
    v6 = 8 * v4 / 5;
  }

  v7 = v4 + 1;
  if (v6 >= 0xAAAAAAAAAAAAAAALL)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  v8 = v7 > v6 ? v4 + 1 : v6;
  if (v7 > 0xAAAAAAAAAAAAAAALL)
  {
LABEL_28:
    boost::container::throw_length_error("get_next_capacity, allocator's max size reached", a2);
  }

  v13 = *(a2 + 1);
  v14 = (*(**a2 + 16))(*a2, 24 * v8, 8);
  v15 = v14;
  v27[1] = a2;
  v27[2] = v8;
  v16 = *(a2 + 1);
  v17 = *(a2 + 2);
  v18 = v16 + 24 * v17;
  v19 = v14;
  if (v16 != a3)
  {
    v20 = *(a2 + 1);
    v19 = v14;
    do
    {
      *v19 = *v20;
      *(v19 + 8) = *(v20 + 8);
      *(v19 + 16) = *(v20 + 16);
      *(v20 + 16) = 0;
      v20 += 24;
      v19 += 24;
    }

    while (v20 != a3);
  }

  *v19 = *a4;
  *(v19 + 8) = *(a4 + 8);
  *(v19 + 16) = *(a4 + 16);
  *(a4 + 16) = 0;
  if (v18 != a3)
  {
    v21 = (v19 + 40);
    v22 = a3;
    do
    {
      *(v21 - 4) = *v22;
      *(v21 - 2) = *(v22 + 8);
      *v21 = *(v22 + 16);
      v21 += 3;
      *(v22 + 16) = 0;
      v22 += 24;
    }

    while (v22 != v18);
  }

  v27[0] = 0;
  if (v16)
  {
    if (v17)
    {
      v23 = (v16 + 16);
      do
      {
        --v17;
        v24 = *v23;
        v23 += 3;
        std::pmr::polymorphic_allocator<boost::container::dtl::pair<unsigned int,vp::vx::components::Audio_Data_Analysis::Node_Decorator::Tap_Point>>::destroy[abi:ne200100]<boost::container::dtl::pair<unsigned int,vp::vx::components::Audio_Data_Analysis::Node_Decorator::Tap_Point>>(v24);
      }

      while (v17);
    }

    (*(**a2 + 24))(*a2, *(a2 + 1), 24 * *(a2 + 3), 8);
  }

  v25 = *(a2 + 2) + 1;
  *(a2 + 1) = v15;
  *(a2 + 2) = v25;
  *(a2 + 3) = v8;
  result = boost::container::dtl::scoped_array_deallocator<vp::Allocator<boost::container::dtl::pair<unsigned int,vp::vx::components::Audio_Data_Analysis::Node_Decorator::Tap_Point>>>::~scoped_array_deallocator(v27);
  *a1 = *(a2 + 1) + a3 - v13;
  return result;
}

void sub_2725C7A98(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  boost::container::dtl::scoped_array_deallocator<vp::Allocator<boost::container::dtl::pair<unsigned int,vp::vx::components::Audio_Data_Analysis::Node_Decorator::Tap_Point>>>::~scoped_array_deallocator(va);
  _Unwind_Resume(a1);
}

uint64_t boost::container::dtl::scoped_array_deallocator<vp::Allocator<boost::container::dtl::pair<unsigned int,vp::vx::components::Audio_Data_Analysis::Node_Decorator::Tap_Point>>>::~scoped_array_deallocator(uint64_t a1)
{
  if (*a1)
  {
    (*(***(a1 + 8) + 24))(**(a1 + 8), *a1, 24 * *(a1 + 16), 8);
  }

  return a1;
}

BOOL boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,vp::vx::components::Audio_Data_Analysis::Node_Decorator::Tap_Point>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,vp::Allocator<boost::container::dtl::pair<unsigned int,vp::vx::components::Audio_Data_Analysis::Node_Decorator::Tap_Point>>>::priv_insert_unique_prepare(unsigned int *a1, unsigned int **a2, unsigned int a3, unsigned int **a4)
{
  if (*a2 != a1)
  {
    v4 = 0xAAAAAAAAAAAAAAABLL * ((*a2 - a1) >> 3);
    do
    {
      if (v4 != 1 && !a1)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      if (!a1)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      v5 = v4 >> 1;
      v6 = &a1[6 * (v4 >> 1)];
      v8 = *v6;
      v7 = v6 + 6;
      v4 += ~(v4 >> 1);
      if (v8 >= a3)
      {
        v4 = v5;
      }

      else
      {
        a1 = v7;
      }
    }

    while (v4);
  }

  *a4 = a1;
  if (a1 == *a2)
  {
    return 1;
  }

  if (!a1)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  return *a1 > a3;
}

uint64_t std::__exception_guard_exceptions<vp::vx::components::Audio_Data_Analysis::Node_Decorator * std::pmr::polymorphic_allocator<vp::vx::components::Audio_Data_Analysis::Node_Decorator>::new_object[abi:ne200100]<vp::vx::components::Audio_Data_Analysis::Node_Decorator,std::unique_ptr<vp::vx::io::Node,vp::Allocator_Delete<vp::vx::io::Node>>,std::shared_ptr<vp::services::Audio_Data_Analysis::Client> const&>(std::unique_ptr<vp::vx::io::Node,vp::Allocator_Delete<vp::vx::io::Node>>,std::shared_ptr<vp::services::Audio_Data_Analysis::Client> const&)::{lambda(void)#1}>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    (*(***(a1 + 8) + 24))(**(a1 + 8), **a1, 160, 8);
  }

  return a1;
}

void vp::vx::io::Node_Decorator::~Node_Decorator(vp::vx::io::Node_Decorator *this, uint64_t *a2)
{
  v2 = *a2;
  *this = *a2;
  *(this + *(v2 - 24)) = a2[3];
  std::unique_ptr<vp::vx::io::Node,vp::Allocator_Delete<vp::vx::io::Node>>::reset[abi:ne200100](this + 1, 0);
}

void vp::vx::components::Audio_Data_Analysis::Node_Decorator_Factory::~Node_Decorator_Factory(vp::vx::components::Audio_Data_Analysis::Node_Decorator_Factory *this)
{
  boost::container::vector<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,vp::vx::components::Audio_Data_Analysis::Node_Decorator::Tap_Point>,vp::Allocator<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,vp::vx::components::Audio_Data_Analysis::Node_Decorator::Tap_Point>>,void>::~vector(this + 7);
  boost::container::vector<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,vp::vx::components::Audio_Data_Analysis::Node_Decorator::Tap_Point>,vp::Allocator<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,vp::vx::components::Audio_Data_Analysis::Node_Decorator::Tap_Point>>,void>::~vector(this + 3);
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  boost::container::vector<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,vp::vx::components::Audio_Data_Analysis::Node_Decorator::Tap_Point>,vp::Allocator<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,vp::vx::components::Audio_Data_Analysis::Node_Decorator::Tap_Point>>,void>::~vector(this + 7);
  boost::container::vector<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,vp::vx::components::Audio_Data_Analysis::Node_Decorator::Tap_Point>,vp::Allocator<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,vp::vx::components::Audio_Data_Analysis::Node_Decorator::Tap_Point>>,void>::~vector(this + 3);
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

uint64_t boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,vp::vx::components::Audio_Data_Analysis::Node_Decorator::Tap_Point>::~pair(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t boost::container::vector<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,vp::vx::components::Audio_Data_Analysis::Node_Decorator::Tap_Point>,vp::Allocator<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,vp::vx::components::Audio_Data_Analysis::Node_Decorator::Tap_Point>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<vp::Allocator<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,vp::vx::components::Audio_Data_Analysis::Node_Decorator::Tap_Point>>,boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,vp::vx::components::Audio_Data_Analysis::Node_Decorator::Tap_Point>*,boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,vp::vx::components::Audio_Data_Analysis::Node_Decorator::Tap_Point>>>(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 3);
  if (v4 != *(a2 + 2))
  {
    __assert_rtn("next_capacity", "vector.hpp", 473, "additional_objects > size_type(this->m_capacity - this->m_size)");
  }

  if (v4 == 0xAAAAAAAAAAAAAAALL)
  {
    goto LABEL_28;
  }

  if (v4 >> 61 > 4)
  {
    v5 = -1;
  }

  else
  {
    v5 = 8 * v4;
  }

  if (v4 >> 61)
  {
    v6 = v5;
  }

  else
  {
    v6 = 8 * v4 / 5;
  }

  v7 = v4 + 1;
  if (v6 >= 0xAAAAAAAAAAAAAAALL)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  v8 = v7 > v6 ? v4 + 1 : v6;
  if (v7 > 0xAAAAAAAAAAAAAAALL)
  {
LABEL_28:
    boost::container::throw_length_error("get_next_capacity, allocator's max size reached", a2);
  }

  v13 = *(a2 + 1);
  v14 = (*(**a2 + 16))(*a2, 24 * v8, 8);
  v15 = v14;
  v27[1] = a2;
  v27[2] = v8;
  v16 = *(a2 + 1);
  v17 = v16 + 24 * *(a2 + 2);
  v18 = v14;
  if (v16 != a3)
  {
    v19 = *(a2 + 1);
    v18 = v14;
    do
    {
      *v18 = *v19;
      *(v18 + 8) = *(v19 + 8);
      *(v18 + 16) = *(v19 + 16);
      *(v19 + 16) = 0;
      v19 += 24;
      v18 += 24;
    }

    while (v19 != a3);
  }

  *v18 = *a4;
  *(v18 + 8) = *(a4 + 8);
  *(v18 + 16) = *(a4 + 16);
  *(a4 + 16) = 0;
  if (v17 != a3)
  {
    v20 = (v18 + 40);
    v21 = a3;
    do
    {
      *(v20 - 2) = *v21;
      *(v20 - 2) = *(v21 + 8);
      *v20 = *(v21 + 16);
      v20 += 3;
      *(v21 + 16) = 0;
      v21 += 24;
    }

    while (v21 != v17);
  }

  v27[0] = 0;
  if (v16)
  {
    v22 = *(a2 + 2);
    if (v22)
    {
      v23 = (v16 + 16);
      do
      {
        --v22;
        v24 = *v23;
        v23 += 3;
        std::pmr::polymorphic_allocator<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,vp::vx::components::Audio_Data_Analysis::Node_Decorator::Tap_Point>>::destroy[abi:ne200100]<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,vp::vx::components::Audio_Data_Analysis::Node_Decorator::Tap_Point>>(v24);
      }

      while (v22);
    }

    (*(**a2 + 24))(*a2, *(a2 + 1), 24 * *(a2 + 3), 8);
  }

  v25 = *(a2 + 2) + 1;
  *(a2 + 1) = v15;
  *(a2 + 2) = v25;
  *(a2 + 3) = v8;
  result = boost::container::dtl::scoped_array_deallocator<vp::Allocator<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,vp::vx::components::Audio_Data_Analysis::Node_Decorator::Tap_Point>>>::~scoped_array_deallocator(v27);
  *a1 = *(a2 + 1) + a3 - v13;
  return result;
}

void sub_2725C8044(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  boost::container::dtl::scoped_array_deallocator<vp::Allocator<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,vp::vx::components::Audio_Data_Analysis::Node_Decorator::Tap_Point>>>::~scoped_array_deallocator(va);
  _Unwind_Resume(a1);
}

uint64_t boost::container::dtl::scoped_array_deallocator<vp::Allocator<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,vp::vx::components::Audio_Data_Analysis::Node_Decorator::Tap_Point>>>::~scoped_array_deallocator(uint64_t a1)
{
  if (*a1)
  {
    (*(***(a1 + 8) + 24))(**(a1 + 8), *a1, 24 * *(a1 + 16), 8);
  }

  return a1;
}

uint64_t boost::container::dtl::flat_tree<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,vp::vx::components::Audio_Data_Analysis::Node_Decorator::Tap_Point>,boost::container::dtl::select1st<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>>,std::less<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>>,vp::Allocator<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,vp::vx::components::Audio_Data_Analysis::Node_Decorator::Tap_Point>>>::priv_insert_unique_prepare(unsigned int *a1, unsigned int **a2, unsigned int a3, unsigned int a4, unsigned int **a5)
{
  if (*a2 != a1)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((*a2 - a1) >> 3);
    do
    {
      if (v5 != 1 && !a1)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      if (!a1)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      v6 = v5 >> 1;
      v7 = &a1[6 * (v5 >> 1)];
      if (*v7 >= a3)
      {
        v8 = 1;
      }

      else
      {
        v8 = -1;
      }

      if (*v7 == a3)
      {
        v9 = v7[1];
        v10 = v9 == a4;
        v8 = v9 >= a4 ? 1 : -1;
        if (v10)
        {
          v8 = 0;
        }
      }

      v11 = v7 + 6;
      v5 += ~v6;
      if (v8 < 0)
      {
        a1 = v11;
      }

      else
      {
        v5 = v6;
      }
    }

    while (v5);
  }

  *a5 = a1;
  if (a1 == *a2)
  {
    return 1;
  }

  if (!a1)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  if (*a1 <= a3)
  {
    v12 = 1;
  }

  else
  {
    v12 = 255;
  }

  if (*a1 == a3)
  {
    v13 = a1[1];
    v14 = v13 == a4;
    v15 = v13 > a4;
    v12 = 255;
    if (!v15)
    {
      v12 = 1;
    }

    if (v14)
    {
      v12 = 0;
    }
  }

  return v12 >> 7;
}

void vp::Audio_File::~Audio_File(OpaqueExtAudioFile **this)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *this;
  if (v2)
  {
    if (ExtAudioFileDispose(v2))
    {
      os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    *this = 0;
  }

  v3 = *MEMORY[0x277D85DE8];
}

void sub_2725C8304(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void vp::Audio_File::get_property(vp::Audio_File *this, ExtAudioFileRef *a2, ExtAudioFilePropertyID inPropertyID, unsigned int *a4, UInt32 *a5)
{
  v34 = *MEMORY[0x277D85DE8];
  ioPropertyDataSize = *a5;
  v23 = a5;
  Property = ExtAudioFileGetProperty(*a2, inPropertyID, &ioPropertyDataSize, a4);
  v9 = Property;
  if (Property)
  {
    v10 = Property >> 8;
    log = vp::get_log(Property);
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      log_context_info = vp::get_log_context_info(__p, a2, "vp::Audio_File]", 14);
      v15 = v25;
      v16 = v25;
      v17 = __p[1];
      v18 = vp::get_log(log_context_info);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        if (v16 >= 0)
        {
          v19 = v15;
        }

        else
        {
          v19 = v17;
        }

        v20 = __p[0];
        if (v16 >= 0)
        {
          v20 = __p;
        }

        *buf = 136315906;
        v27 = v20;
        v28 = 2080;
        if (v19)
        {
          v21 = " ";
        }

        else
        {
          v21 = "";
        }

        v29 = v21;
        v30 = 1024;
        v31 = inPropertyID;
        v32 = 1024;
        v33 = v9;
        _os_log_impl(&dword_2724B4000, v18, OS_LOG_TYPE_ERROR, "%s%sfailed to get property %u status %u", buf, 0x22u);
        LOBYTE(v16) = v25;
      }

      if ((v16 & 0x80) != 0)
      {
        operator delete(__p[0]);
      }
    }

    v11 = 0;
  }

  else
  {
    v10 = 0;
    v11 = 1;
  }

  *this = v9 | (v10 << 8);
  *(this + 4) = v11;
  *v23 = ioPropertyDataSize;
  v12 = *MEMORY[0x277D85DE8];
}

void sub_2725C84B4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

const void **applesauce::CF::ObjectRef<__CFURL const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void applesauce::CF::URLRef::~URLRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

void vp::Audio_File::open_for_reading(vp::Audio_File *this, const std::__fs::filesystem::path *a2, const CA::StreamDescription *a3)
{
  outExtAudioFile = 0;
  if (SHIBYTE(a2->__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&pn, a2->__pn_.__r_.__value_.__l.__data_, a2->__pn_.__r_.__value_.__l.__size_);
  }

  else
  {
    pn = a2->__pn_;
  }

  if ((pn.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_pn = &pn;
  }

  else
  {
    p_pn = pn.__r_.__value_.__r.__words[0];
  }

  if ((pn.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(pn.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = pn.__r_.__value_.__l.__size_;
  }

  v7 = MEMORY[0x2743CB370](0, p_pn, size, 0, 0);
  v14 = v7;
  if (!v7)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(pn.__r_.__value_.__l.__data_);
    v7 = v14;
  }

  ExtAudioFileOpenURL(v7, &outExtAudioFile);
  ExtAudioFileSetProperty(outExtAudioFile, 0x63666D74u, 0x28u, a3);
  if (v14)
  {
    CFRelease(v14);
  }

  v8 = outExtAudioFile;
  outExtAudioFile = 0;
  v11 = 0;
  v12 = 1;
  pn.__r_.__value_.__s.__data_[8] = 1;
  vp::Audio_File::~Audio_File(&v11);
  vp::Audio_File::~Audio_File(&outExtAudioFile);
  v11 = 0;
  pn.__r_.__value_.__r.__words[0] = 0;
  *this = v8;
  vp::Audio_File::~Audio_File(&v11);
  vp::Audio_File::~Audio_File(&pn);
}

void sub_2725C867C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, OpaqueExtAudioFile *a10, uint64_t a11, uint64_t a12, void *__p, char a14, int a15, int a16, __int16 a17, char a18, char a19)
{
  vp::Audio_File::~Audio_File(&a10);
  __cxa_begin_catch(a1);
  LOBYTE(__p) = 0;
  a14 = 0;
  __cxa_end_catch();
  a11 = 0;
  *v19 = 0;
  JUMPOUT(0x2725C8628);
}

uint64_t vp::vx::get_nominal_input_sample_rate(uint64_t a1, uint64_t a2)
{
  v3 = 0x696E70746E737274;
  v4 = 0;
  v6 = 0;
  v5 = 8;
  LODWORD(result) = (*(*a1 + 24))(a1, a2, &v3, 0, 0, &v5, &v6);
  if (result)
  {
    return result;
  }

  else
  {
    return v6;
  }
}

uint64_t vp::vx::get_nominal_output_sample_rate(uint64_t a1, uint64_t a2)
{
  v3 = 0x6F7574706E737274;
  v4 = 0;
  v6 = 0;
  v5 = 8;
  LODWORD(result) = (*(*a1 + 24))(a1, a2, &v3, 0, 0, &v5, &v6);
  if (result)
  {
    return result;
  }

  else
  {
    return v6;
  }
}

unint64_t vp::vx::get_input_latency(uint64_t a1, uint64_t a2)
{
  v5 = 0x696E70746C746E63;
  v6 = 0;
  v7 = 4;
  v8 = 0;
  v2 = (*(*a1 + 24))(a1, a2, &v5, 0, 0, &v7, &v8);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = v8;
  }

  return v3 | ((v2 == 0) << 32);
}

unint64_t vp::vx::get_output_latency(uint64_t a1, uint64_t a2)
{
  v5 = 0x6F7574706C746E63;
  v6 = 0;
  v7 = 4;
  v8 = 0;
  v2 = (*(*a1 + 24))(a1, a2, &v5, 0, 0, &v7, &v8);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = v8;
  }

  return v3 | ((v2 == 0) << 32);
}

unint64_t vp::vx::get_input_safety_offset(uint64_t a1, uint64_t a2)
{
  v5 = 0x696E707473616674;
  v6 = 0;
  v7 = 4;
  v8 = 0;
  v2 = (*(*a1 + 24))(a1, a2, &v5, 0, 0, &v7, &v8);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = v8;
  }

  return v3 | ((v2 == 0) << 32);
}

unint64_t vp::vx::get_output_safety_offset(uint64_t a1, uint64_t a2)
{
  v5 = 0x6F75747073616674;
  v6 = 0;
  v7 = 4;
  v8 = 0;
  v2 = (*(*a1 + 24))(a1, a2, &v5, 0, 0, &v7, &v8);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = v8;
  }

  return v3 | ((v2 == 0) << 32);
}

unint64_t vp::vx::get_port_owning_device_id(uint64_t a1, uint64_t a2, int a3)
{
  v11[0] = 1684238451;
  v11[1] = a3;
  v11[2] = 0;
  vp::vx::get_property<applesauce::CF::ArrayRef>(&theArray, a1, a2, v11, 0, 0);
  if (v13 == 1)
  {
    caulk::expected<CA::AudioSampleRateConverter,int>::value(&theArray);
    v4 = theArray;
    theArray = 0;
    if (!v4)
    {
      v5 = 0;
      v14 = 0;
      v15 = 1;
      goto LABEL_11;
    }

    v5 = 0x100000000;
    if (CFArrayGetCount(v4))
    {
      v6 = applesauce::CF::details::at_as<unsigned int>(v4);
      if ((v6 & 0x100000000) != 0)
      {
        v5 = v6 | 0x100000000;
      }
    }

    CFRelease(v4);
  }

  else
  {
    v5 = theArray;
  }

  v14 = v5;
  v15 = BYTE4(v5);
  if ((v5 & 0x100000000) != 0)
  {
LABEL_11:
    caulk::expected<unsigned int,int>::value(&v14);
    v16 = 0x676C6F62706F776ELL;
    v17 = 0;
    v18 = 4;
    v19 = 0;
    v8 = (*(*a1 + 24))(a1, v5, &v16, 0, 0, &v18, &v19);
    if (v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = v19;
    }

    v7 = v9 | ((v8 == 0) << 32);
    v16 = v7;
    LOBYTE(v17) = 1;
    caulk::expected<CA::AudioSampleRateConverter,int>::value(&v16);
    goto LABEL_15;
  }

  v7 = v5;
LABEL_15:
  if (v13 == 1)
  {
    caulk::__expected_detail::destroy<applesauce::CF::ArrayRef,(void *)0>(theArray);
  }

  return v7;
}

void vp::vx::get_property<applesauce::CF::ArrayRef>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  cf = 0;
  v11 = 8;
  v7 = (*(*a2 + 24))(a2, a3, a4, a5, a6, &v11, &cf);
  if (v7)
  {
    v8 = 0;
    *a1 = v7;
  }

  else
  {
    v9 = cf;
    if (cf)
    {
      v10 = CFGetTypeID(cf);
      if (v10 != CFArrayGetTypeID())
      {
        CFRelease(v9);
        v9 = 0;
      }
    }

    *a1 = v9;
    v8 = 1;
  }

  *(a1 + 8) = v8;
}

void caulk::__expected_detail::destroy<applesauce::CF::ArrayRef,(void *)0>(const void *a1)
{
  if (a1)
  {
    CFRelease(a1);
  }
}

unint64_t vp::vx::get_io_cycle_usage(uint64_t a1, uint64_t a2)
{
  v5 = 0x676C6F626E637963;
  v6 = 0;
  v7 = 4;
  v8 = 0;
  v2 = (*(*a1 + 24))(a1, a2, &v5, 0, 0, &v7, &v8);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = v8;
  }

  return v3 | ((v2 == 0) << 32);
}

uint64_t vp::vx::get_output_device_is_apple_made_bluetooth_product(uint64_t a1, uint64_t a2)
{
  port_owning_device_id = vp::vx::get_port_owning_device_id(a1, a2, 1869968496);
  v4 = port_owning_device_id;
  v9 = port_owning_device_id;
  v10 = BYTE4(port_owning_device_id);
  if ((port_owning_device_id & 0x100000000) != 0)
  {
    caulk::expected<unsigned int,int>::value(&v9);
    v11 = 0x676C6F6269616170;
    v12 = 0;
    if ((*(*a1 + 16))(a1, v4, &v11))
    {
      v14 = 0;
      v13 = 4;
      v6 = (*(*a1 + 24))(a1, v4, &v11, 0, 0, &v13, &v14);
      if (v6)
      {
        v7 = v6;
      }

      else
      {
        v7 = v14;
      }

      v5 = v7 | ((v6 == 0) << 32);
    }

    else
    {
      v5 = 0x100000000;
    }

    v11 = v5;
    LOBYTE(v12) = 1;
    caulk::expected<CA::AudioSampleRateConverter,int>::value(&v11);
  }

  else
  {
    v5 = port_owning_device_id;
  }

  LODWORD(v11) = v5;
  BYTE4(v11) = BYTE4(v5);
  if ((v5 & 0x100000000) == 0)
  {
    return v5;
  }

  caulk::expected<unsigned int,int>::value(&v11);
  if (v5 == 1)
  {
    return 0x100000001;
  }

  else
  {
    return 0x100000000;
  }
}

const __CFArray *vp::vx::get_output_physical_stream_latency(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v16 = a3;
  v11 = 0x6F75747064616373;
  v12 = 0;
  vp::vx::get_property<applesauce::CF::ArrayRef>(&theArray, a1, a2, &v11, 4, &v16);
  if (v14 != 1)
  {
    v5 = theArray;
    goto LABEL_11;
  }

  caulk::expected<CA::AudioSampleRateConverter,int>::value(&theArray);
  v4 = theArray;
  theArray = 0;
  if (!v4)
  {
    v5 = 0x100000000;
LABEL_10:
    caulk::__expected_detail::destroy<applesauce::CF::ArrayRef,(void *)0>(theArray);
    goto LABEL_11;
  }

  v5 = 0x100000000;
  if (CFArrayGetCount(v4))
  {
    v6 = applesauce::CF::details::at_as<unsigned int>(v4);
    if ((v6 & 0x100000000) != 0)
    {
      v5 = v6 | 0x100000000;
    }
  }

  CFRelease(v4);
  if (v14)
  {
    goto LABEL_10;
  }

LABEL_11:
  LODWORD(v11) = v5;
  BYTE4(v11) = BYTE4(v5);
  if ((v5 & 0x100000000) == 0)
  {
    return v5;
  }

  caulk::expected<unsigned int,int>::value(&v11);
  theArray = 0x6F757470736C6174;
  v14 = 0;
  v16 = 0;
  v15 = 4;
  v8 = (*(*a1 + 24))(a1, v5, &theArray, 0, 0, &v15, &v16);
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v16;
  }

  v7 = (v9 | ((v8 == 0) << 32));
  theArray = v7;
  LOBYTE(v14) = 1;
  caulk::expected<CA::AudioSampleRateConverter,int>::value(&theArray);
  return v7;
}

void vp::vx::get_output_port_uid(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  port_id = vp::vx::get_port_id(a1, a2, 1869968496, a3);
  v7 = port_id;
  v11 = port_id;
  v12 = BYTE4(port_id);
  if ((port_id & 0x100000000) != 0)
  {
    caulk::expected<unsigned int,int>::value(&v11);
    v13 = 0x6F75747070756964;
    cf = 0;
    v14 = 0;
    v15 = 8;
    v8 = (*(*a1 + 24))(a1, v7, &v13, 0, 0, &v15, &cf);
    if (v8)
    {
      *(a4 + 8) = 0;
      *a4 = v8;
    }

    else
    {
      v9 = cf;
      if (cf)
      {
        v10 = CFGetTypeID(cf);
        if (v10 != CFStringGetTypeID())
        {
          CFRelease(v9);
          v9 = 0;
        }
      }

      *(a4 + 8) = 1;
      *a4 = v9;
      caulk::__expected_detail::destroy<applesauce::CF::StringRef,(void *)0>(0);
      caulk::__expected_detail::destroy<applesauce::CF::StringRef,(void *)0>(0);
    }
  }

  else
  {
    *a4 = port_id;
    *(a4 + 8) = 0;
  }
}

uint64_t vp::vx::get_port_id(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v17[0] = 1684104048;
  v17[1] = a3;
  v17[2] = 0;
  vp::vx::get_property<applesauce::CF::ArrayRef>(&theArray, a1, a2, v17, 0, 0);
  if (v19 == 1)
  {
    caulk::expected<CA::AudioSampleRateConverter,int>::value(&theArray);
    v6 = theArray;
    v20 = theArray;
    theArray = 0;
    v21 = 0x676C6F6270747970;
    v22 = 0;
    if (v20)
    {
      Count = CFArrayGetCount(v6);
      v8 = CFArrayGetCount(v6);
      if (Count)
      {
        v9 = v8;
        for (i = 0; i != Count; ++i)
        {
          if (v9 == i)
          {
            break;
          }

          if (CFArrayGetCount(v6) <= i || (ValueAtIndex = CFArrayGetValueAtIndex(v6, i)) == 0)
          {
            exception = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(exception, "Could not find item");
          }

          v12 = applesauce::CF::convert_to<unsigned int,0>(ValueAtIndex);
          v23 = 4;
          v24 = 0;
          if ((*(*a1 + 24))(a1, v12, &v21, 0, 0, &v23, &v24))
          {
            v13 = 0;
          }

          else
          {
            v13 = v24 == a4;
          }

          if (v13)
          {
            goto LABEL_14;
          }
        }

        LODWORD(v12) = 0;
LABEL_14:
        v14 = v12 | 0x100000000;
      }

      else
      {
        v14 = 0x100000000;
      }

      CFRelease(v6);
    }

    else
    {
      v14 = 0x100000000;
    }
  }

  else
  {
    v14 = theArray;
  }

  if (v19 == 1)
  {
    caulk::__expected_detail::destroy<applesauce::CF::ArrayRef,(void *)0>(theArray);
  }

  return v14;
}

void caulk::__expected_detail::destroy<applesauce::CF::StringRef,(void *)0>(const void *a1)
{
  if (a1)
  {
    CFRelease(a1);
  }
}

unint64_t vp::vx::get_output_port_HLC2chstate(uint64_t a1, uint64_t a2, int a3)
{
  port_id = vp::vx::get_port_id(a1, a2, 1869968496, a3);
  v5 = port_id;
  v10 = port_id;
  v11 = BYTE4(port_id);
  if ((port_id & 0x100000000) == 0)
  {
    return port_id;
  }

  caulk::expected<unsigned int,int>::value(&v10);
  v12 = 0x6F75747073706D65;
  v13 = 0;
  if ((*(*a1 + 16))(a1, v5, &v12))
  {
    v15 = 0;
    v14 = 4;
    v7 = (*(*a1 + 24))(a1, v5, &v12, 0, 0, &v14, &v15);
    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = v15;
    }

    v6 = v8 | ((v7 == 0) << 32);
  }

  else
  {
    v6 = 0x100000000;
  }

  v12 = v6;
  LOBYTE(v13) = 1;
  caulk::expected<CA::AudioSampleRateConverter,int>::value(&v12);
  return v6;
}

uint64_t vp::vx::components::Audio_Injector::as_io_node_decorator_factory(uint64_t a1, int a2)
{
  if (!*(a1 + 432))
  {
    return 0;
  }

  v8[1] = 0;
  v8[2] = 0;
  v8[0] = std::pmr::get_default_resource(a1);
  vp::vx::data_flow::State<void>::get_value((a1 + 424), v8);
  v4 = *vp::vx::data_flow::Value::view_storage(v8);
  vp::vx::data_flow::Value::~Value(v8);
  v5 = 184;
  if (!a2)
  {
    v5 = 0;
  }

  v6 = a1 + v5 + 56;
  if (v4 == 1)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

void vp::vx::components::Audio_Injector::begin_configuration_changes(vp::vx::components::Audio_Injector *this)
{
  v37 = *MEMORY[0x277D85DE8];
  v2 = *(this + 6);
  if (!v2 || (v3 = std::__shared_weak_count::lock(v2)) == 0 || (v4 = *(this + 5), atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed), v25 = v3, !v4))
  {
    _os_crash();
    __break(1u);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  for (i = 0; i != 2; ++i)
  {
    if (vp::domains(void)::s_domains[i])
    {
      v6 = 184;
    }

    else
    {
      v6 = 0;
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "unkn");
    (*(*v4 + 16))(&v30, v4, 10);
    LODWORD(v28.__r_.__value_.__l.__data_) = v30.__r_.__value_.__l.__data_;
    *&v28.__r_.__value_.__r.__words[1] = *&v30.__r_.__value_.__r.__words[1];
    *&v30.__r_.__value_.__r.__words[1] = 0uLL;
    v7 = vp::vx::data_flow::State<void>::~State(&v30);
    if (v28.__r_.__value_.__l.__size_)
    {
      *__s = std::pmr::get_default_resource(v7);
      v35 = 0;
      v36 = 0;
      data = v28.__r_.__value_.__l.__data_;
      v30.__r_.__value_.__r.__words[0] = v28.__r_.__value_.__l.__size_;
      v30.__r_.__value_.__l.__size_ = &data;
      v30.__r_.__value_.__r.__words[2] = __s;
      vp::vx::data_flow::Engine::do_with_shared_state_lock(v28.__r_.__value_.__l.__size_, caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::data_flow::Engine::get_state_value(unsigned int,vp::vx::data_flow::Value &)::$_0>, &v30);
      v8 = *vp::vx::data_flow::Value::view_storage(__s);
      vp::vx::data_flow::Value::~Value(__s);
      v9 = vp::vx::legacy_cast_noexcept<vp::vx::Input_Port_Type>(v8);
      if (HIDWORD(v9))
      {
        if (v9)
        {
          v10 = bswap32(v9);
          *__s = v10;
          if ((v10 - 32) > 0x5E || ((v10 >> 8) - 32) > 0x5E || ((v10 << 8 >> 24) - 32) > 0x5E || ((v10 >> 24) - 32) > 0x5E)
          {
            std::to_string(&v30, v9);
          }

          else
          {
            __s[4] = 0;
            std::string::basic_string[abi:ne200100]<0>(&v30, __s);
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          __p = v30;
        }
      }
    }

    v11 = this + v6 + 56;
    vp::vx::data_flow::State<void>::~State(&v28);
    v33[0] = __p.__r_.__value_.__l.__size_;
    v12 = __p.__r_.__value_.__r.__words[0];
    *(v33 + 7) = *(&__p.__r_.__value_.__r.__words[1] + 7);
    v13 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    memset(&__p, 0, sizeof(__p));
    if (v11[55] < 0)
    {
      operator delete(*(v11 + 4));
    }

    v14 = v33[0];
    *(v11 + 4) = v12;
    *(v11 + 5) = v14;
    *(v11 + 47) = *(v33 + 7);
    v11[55] = v13;
    std::string::basic_string[abi:ne200100]<0>(&v28, "unkn");
    (*(*v4 + 16))(&v30, v4, 26);
    data = v30.__r_.__value_.__l.__data_;
    v27 = *&v30.__r_.__value_.__r.__words[1];
    *&v30.__r_.__value_.__r.__words[1] = 0uLL;
    v15 = vp::vx::data_flow::State<void>::~State(&v30);
    if (v27)
    {
      *__s = std::pmr::get_default_resource(v15);
      v35 = 0;
      v36 = 0;
      v31 = data;
      v30.__r_.__value_.__r.__words[0] = v27;
      v30.__r_.__value_.__l.__size_ = &v31;
      v30.__r_.__value_.__r.__words[2] = __s;
      vp::vx::data_flow::Engine::do_with_shared_state_lock(v27, caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::data_flow::Engine::get_state_value(unsigned int,vp::vx::data_flow::Value &)::$_0>, &v30);
      v16 = *vp::vx::data_flow::Value::view_storage(__s);
      vp::vx::data_flow::Value::~Value(__s);
      v17 = vp::vx::legacy_cast_noexcept<vp::vx::Output_Port_Type>(v16);
      if (HIDWORD(v17))
      {
        if (v17)
        {
          v18 = bswap32(v17);
          *__s = v18;
          if ((v18 - 32) > 0x5E || ((v18 >> 8) - 32) > 0x5E || ((v18 << 8 >> 24) - 32) > 0x5E || ((v18 >> 24) - 32) > 0x5E)
          {
            std::to_string(&v30, v17);
          }

          else
          {
            __s[4] = 0;
            std::string::basic_string[abi:ne200100]<0>(&v30, __s);
          }

          if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v28.__r_.__value_.__l.__data_);
          }

          v28 = v30;
        }
      }
    }

    vp::vx::data_flow::State<void>::~State(&data);
    v32[0] = v28.__r_.__value_.__l.__size_;
    v19 = v28.__r_.__value_.__r.__words[0];
    *(v32 + 7) = *(&v28.__r_.__value_.__r.__words[1] + 7);
    v20 = HIBYTE(v28.__r_.__value_.__r.__words[2]);
    memset(&v28, 0, sizeof(v28));
    if (v11[79] < 0)
    {
      operator delete(*(v11 + 7));
      v22 = SHIBYTE(v28.__r_.__value_.__r.__words[2]);
      v23 = v32[0];
      *(v11 + 7) = v19;
      *(v11 + 8) = v23;
      *(v11 + 71) = *(v32 + 7);
      v11[79] = v20;
      if (v22 < 0)
      {
        operator delete(v28.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v21 = v32[0];
      *(v11 + 7) = v19;
      *(v11 + 8) = v21;
      *(v11 + 71) = *(v32 + 7);
      v11[79] = v20;
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  v24 = *MEMORY[0x277D85DE8];
}

void sub_2725C99B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::__shared_weak_count *a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if ((v25 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a9);
    std::__shared_weak_count::__release_shared[abi:ne200100](a9);
  }

  _Unwind_Resume(exception_object);
}

void sub_2725C9A6C(int a1)
{
  if (a1)
  {
    __cxa_end_catch();
  }

  else
  {
    _os_crash();
    __break(1u);
  }

  JUMPOUT(0x2725C9A5CLL);
}

void sub_2725C9AB8(int a1)
{
  if (a1)
  {
    __cxa_end_catch();
  }

  else
  {
    _os_crash();
    __break(1u);
  }

  JUMPOUT(0x2725C9AA8);
}

void vp::vx::components::Audio_Injector::configure(vp::vx::components::Audio_Injector *this)
{
  v30 = *MEMORY[0x277D85DE8];
  log = vp::get_log(this);
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    log_context_info = vp::get_log_context_info(&v28, this, "vp::vx::components::Audio_Injector]", 34);
    v4 = HIBYTE(v29);
    v5 = SHIBYTE(v29);
    v6 = v29;
    v7 = vp::get_log(log_context_info);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      if (v5 >= 0)
      {
        v8 = v4;
      }

      else
      {
        v8 = v6;
      }

      v9 = v28;
      if (v5 >= 0)
      {
        v9 = &v28;
      }

      if (v8)
      {
        v10 = " ";
      }

      else
      {
        v10 = "";
      }

      *buf = 136315394;
      *v27 = v9;
      *&v27[8] = 2080;
      *&v27[10] = v10;
      _os_log_impl(&dword_2724B4000, v7, OS_LOG_TYPE_INFO, "%s%sconfigure", buf, 0x16u);
      LOBYTE(v5) = HIBYTE(v29);
    }

    if ((v5 & 0x80) != 0)
    {
      operator delete(v28);
    }
  }

  v11 = *(this + 2);
  if (!v11 || (v12 = std::__shared_weak_count::lock(v11)) == 0 || (v13 = v12, v14 = *(this + 1), atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed), !v14))
  {
    _os_crash();
    __break(1u);
LABEL_27:
    _os_crash();
    __break(1u);
    goto LABEL_28;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  v15 = *(this + 4);
  if (!v15)
  {
    goto LABEL_27;
  }

  v16 = std::__shared_weak_count::lock(v15);
  if (!v16)
  {
    goto LABEL_27;
  }

  v17 = v16;
  v18 = *(this + 3);
  atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  if (!v18)
  {
    goto LABEL_27;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  v19 = *(this + 6);
  if (!v19 || (v20 = std::__shared_weak_count::lock(v19)) == 0 || (v21 = v20, v22 = *(this + 5), atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed), !v22))
  {
LABEL_28:
    _os_crash();
    __break(1u);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  (*(*v22 + 24))(&v28, v22, 0);
  *buf = v28;
  *&v27[4] = v29;
  v29 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v28);
  vp::vx::data_flow::State<void>::~State(this + 106);
  *(this + 106) = *buf;
  v23 = *&v27[4];
  *(this + 27) = *&v27[4];
  *&v27[4] = 0;
  *&v27[12] = 0;
  v24 = v23;
  vp::vx::data_flow::State<void>::~State(buf);
  if (v24)
  {
    atomic_fetch_add_explicit(&v17->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v17->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    operator new();
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  v25 = *MEMORY[0x277D85DE8];
}

void sub_2725CA4E8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(unsigned int,BOOL const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(unsigned int,BOOL const&)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(unsigned int,std::optional<vp::vx::Input_Port_Type> const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(unsigned int,std::optional<vp::vx::Input_Port_Type> const&)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(unsigned int,std::optional<vp::vx::Output_Port_Type> const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(unsigned int,std::optional<vp::vx::Output_Port_Type> const&)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__func<vp::vx::data_flow::State<std::optional<vp::vx::Output_Port_Type>>::register_listener(std::function<void ()(unsigned int,std::optional<vp::vx::Output_Port_Type> const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<std::optional<vp::vx::Output_Port_Type>>::register_listener(std::function<void ()(unsigned int,std::optional<vp::vx::Output_Port_Type> const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::operator()(uint64_t result, int *a2, vp::vx::data_flow::Value *this)
{
  if (*(result + 32))
  {
    v3 = *(this + 2) == &vp::vx::data_flow::Value::type_id<std::optional<vp::vx::Output_Port_Type>>(void)::s_type_id;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v4 = result;
    v5 = *a2;
    result = vp::vx::data_flow::Value::view_storage(this);
    if (result)
    {
      v6 = result;
      v8 = v5;
      v7 = *(v4 + 32);
      if (!v7)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      return (*(*v7 + 48))(v7, &v8, v6);
    }
  }

  return result;
}

BOOL vp::vx::data_flow::Value::Type_ID_Eraser<std::optional<vp::vx::Output_Port_Type>>::compare_value(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 4);
  v4 = *(a2 + 4);
  result = v4 == v3;
  if (v4 == v3 && v4 != 0)
  {
    return *a2 == *a3;
  }

  return result;
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<std::optional<vp::vx::Output_Port_Type>>::view_storage(uint64_t a1, uint64_t a2)
{
  return a2;
}

{
  return a2;
}

void std::__function::__func<vp::vx::data_flow::State<std::optional<vp::vx::Output_Port_Type>>::register_listener(std::function<void ()(unsigned int,std::optional<vp::vx::Output_Port_Type> const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<std::optional<vp::vx::Output_Port_Type>>::register_listener(std::function<void ()(unsigned int,std::optional<vp::vx::Output_Port_Type> const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(unsigned int,std::optional<vp::vx::Output_Port_Type> const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<vp::vx::data_flow::State<std::optional<vp::vx::Output_Port_Type>>::register_listener(std::function<void ()(unsigned int,std::optional<vp::vx::Output_Port_Type> const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<std::optional<vp::vx::Output_Port_Type>>::register_listener(std::function<void ()(unsigned int,std::optional<vp::vx::Output_Port_Type> const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B3460;
  std::__function::__value_func<void ()(unsigned int,std::optional<vp::vx::Output_Port_Type> const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<vp::vx::data_flow::State<std::optional<vp::vx::Output_Port_Type>>::register_listener(std::function<void ()(unsigned int,std::optional<vp::vx::Output_Port_Type> const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<std::optional<vp::vx::Output_Port_Type>>::register_listener(std::function<void ()(unsigned int,std::optional<vp::vx::Output_Port_Type> const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B3460;
  std::__function::__value_func<void ()(unsigned int,std::optional<vp::vx::Output_Port_Type> const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<void vp::vx::observe_global<std::optional<vp::vx::Output_Port_Type>,vp::vx::components::Audio_Injector::configure(void)::$_4>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::optional<vp::vx::Output_Port_Type>> &,vp::vx::components::Audio_Injector::configure(void)::$_4)::{lambda(unsigned int,std::optional<vp::vx::Output_Port_Type> const&)#1},std::allocator<void vp::vx::observe_global<std::optional<vp::vx::Output_Port_Type>,vp::vx::components::Audio_Injector::configure(void)::$_4>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::optional<vp::vx::Output_Port_Type>> &,vp::vx::components::Audio_Injector::configure(void)::$_4)::{lambda(unsigned int,std::optional<vp::vx::Output_Port_Type> const&)#1}>,void ()(unsigned int,std::optional<vp::vx::Output_Port_Type> const&)>::operator()(uint64_t a1, unsigned int *a2, uint64_t *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 16);
  if (v4)
  {
    v6 = *a2;
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 8);
      if (v9)
      {
        v10 = *a3;
        if ((v10 & 0x100000000) != 0)
        {
          v11 = vp::vx::legacy_cast_noexcept<vp::vx::Output_Port_Type>(v10);
          if (v11 <= 0x100000000)
          {
            LODWORD(v11) = 0;
          }

          v12 = bswap32(v11);
          *(&__dst + 1) = v12;
          if ((v12 - 32) > 0x5E || ((v12 >> 8) - 32) > 0x5E || ((v12 << 8 >> 24) - 32) > 0x5E || ((v12 >> 24) - 32) > 0x5E)
          {
            std::to_string(&v19, v11);
          }

          else
          {
            *(&__dst + 5) = 39;
            LOBYTE(__dst) = 39;
            std::string::basic_string[abi:ne200100]<0>(&v19, &__dst);
          }

          if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v13 = &v19;
          }

          else
          {
            v13 = v19.__r_.__value_.__r.__words[0];
          }

          v14 = vp::reflect_value_name_tag<vp::vx::Output_Port_Type,128ul>(v10);
          if (v15 >= 0x7FFFFFFFFFFFFFF8)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          v16 = v15;
          if (v15 >= 0x17)
          {
            operator new();
          }

          v24 = v15;
          if (v15)
          {
            memmove(&__dst, v14, v15);
          }

          *(&__dst + v16) = 0;
          p_dst = &__dst;
          if (v24 < 0)
          {
            p_dst = __dst;
          }

          caulk::make_string("reference port type for audio injectors is %s (%s)", v21, v13, p_dst);
          if (v24 < 0)
          {
            operator delete(__dst);
          }

          if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v19.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          std::string::basic_string[abi:ne200100]<0>(v21, "reference port type for audio injectors is undefined");
        }

        *&v19.__r_.__value_.__l.__data_ = *v21;
        *(&v19.__r_.__value_.__r.__words[1] + 7) = *&v21[15];
        *(&v19.__r_.__value_.__s + 23) = v22;
        v20 = 1;
        (*(*v9 + 16))(v9, v6, &v19);
        if (v20 == 1 && SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v19.__r_.__value_.__l.__data_);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

void sub_2725CAF24(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_2725CAF3C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x2725CAE90);
  }

  JUMPOUT(0x2725CAF2CLL);
}

char *vp::reflect_value_name_tag<vp::vx::Output_Port_Type,128ul>(int a1)
{
  v1 = vp::detail::reflect_value_name<(vp::vx::Output_Port_Type)0,128ul>(a1);
  if (v2)
  {
    v3 = &v1[v2];
    for (i = v2; i; --i)
    {
      v5 = *--v3;
      if (v5 == 58)
      {
        v6 = v3 - v1 + 1;
        if (v2 < v6)
        {
          std::__throw_out_of_range[abi:ne200100]("string_view::substr");
        }

        return &v1[v6];
      }
    }
  }

  v6 = 0;
  return &v1[v6];
}

char *vp::detail::reflect_value_name<(vp::vx::Output_Port_Type)0,128ul>(int a1)
{
  result = "vp::vx::Output_Port_Type::Unknown]";
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      result = "vp::vx::Output_Port_Type::Line_Out]";
      break;
    case 2:
      result = "vp::vx::Output_Port_Type::Headphones_Wired]";
      break;
    case 3:
      result = "vp::vx::Output_Port_Type::Headset_Bluetooth_HFP]";
      break;
    case 4:
      result = "vp::vx::Output_Port_Type::Headphones_Bluetooth_A2DP]";
      break;
    case 5:
      result = "vp::vx::Output_Port_Type::Receiver_Built_In]";
      break;
    case 6:
      result = "vp::vx::Output_Port_Type::HAC_Built_In]";
      break;
    case 7:
      result = "vp::vx::Output_Port_Type::Speaker_Built_In]";
      break;
    case 8:
      result = "vp::vx::Output_Port_Type::TTY_Output]";
      break;
    case 9:
      result = "vp::vx::Output_Port_Type::USB_Audio_Output]";
      break;
    case 10:
      result = "vp::vx::Output_Port_Type::Bluetooth_LE_Output]";
      break;
    case 11:
      result = "vp::vx::Output_Port_Type::Display_Port]";
      break;
    case 12:
      result = "vp::vx::Output_Port_Type::HDMI]";
      break;
    case 13:
      result = "vp::vx::Output_Port_Type::Air_Play_Screen]";
      break;
    case 14:
      result = "vp::vx::Output_Port_Type::Air_Play_Music]";
      break;
    case 15:
      result = "vp::vx::Output_Port_Type::Car_Play_Main_Output]";
      break;
    case 16:
      result = "vp::vx::Output_Port_Type::Air_Play_Low_Latency]";
      break;
    case 17:
      result = "(vp::vx::Output_Port_Type)17]";
      break;
    case 18:
      result = "(vp::vx::Output_Port_Type)18]";
      break;
    case 19:
      result = "(vp::vx::Output_Port_Type)19]";
      break;
    case 20:
      result = "(vp::vx::Output_Port_Type)20]";
      break;
    case 21:
      result = "(vp::vx::Output_Port_Type)21]";
      break;
    case 22:
      result = "(vp::vx::Output_Port_Type)22]";
      break;
    case 23:
      result = "(vp::vx::Output_Port_Type)23]";
      break;
    case 24:
      result = "(vp::vx::Output_Port_Type)24]";
      break;
    case 25:
      result = "(vp::vx::Output_Port_Type)25]";
      break;
    case 26:
      result = "(vp::vx::Output_Port_Type)26]";
      break;
    case 27:
      result = "(vp::vx::Output_Port_Type)27]";
      break;
    case 28:
      result = "(vp::vx::Output_Port_Type)28]";
      break;
    case 29:
      result = "(vp::vx::Output_Port_Type)29]";
      break;
    case 30:
      result = "(vp::vx::Output_Port_Type)30]";
      break;
    case 31:
      result = "(vp::vx::Output_Port_Type)31]";
      break;
    case 32:
      result = "(vp::vx::Output_Port_Type)32]";
      break;
    case 33:
      result = "(vp::vx::Output_Port_Type)33]";
      break;
    case 34:
      result = "(vp::vx::Output_Port_Type)34]";
      break;
    case 35:
      result = "(vp::vx::Output_Port_Type)35]";
      break;
    case 36:
      result = "(vp::vx::Output_Port_Type)36]";
      break;
    case 37:
      result = "(vp::vx::Output_Port_Type)37]";
      break;
    case 38:
      result = "(vp::vx::Output_Port_Type)38]";
      break;
    case 39:
      result = "(vp::vx::Output_Port_Type)39]";
      break;
    case 40:
      result = "(vp::vx::Output_Port_Type)40]";
      break;
    case 41:
      result = "(vp::vx::Output_Port_Type)41]";
      break;
    case 42:
      result = "(vp::vx::Output_Port_Type)42]";
      break;
    case 43:
      result = "(vp::vx::Output_Port_Type)43]";
      break;
    case 44:
      result = "(vp::vx::Output_Port_Type)44]";
      break;
    case 45:
      result = "(vp::vx::Output_Port_Type)45]";
      break;
    case 46:
      result = "(vp::vx::Output_Port_Type)46]";
      break;
    case 47:
      result = "(vp::vx::Output_Port_Type)47]";
      break;
    case 48:
      result = "(vp::vx::Output_Port_Type)48]";
      break;
    case 49:
      result = "(vp::vx::Output_Port_Type)49]";
      break;
    case 50:
      result = "(vp::vx::Output_Port_Type)50]";
      break;
    case 51:
      result = "(vp::vx::Output_Port_Type)51]";
      break;
    case 52:
      result = "(vp::vx::Output_Port_Type)52]";
      break;
    case 53:
      result = "(vp::vx::Output_Port_Type)53]";
      break;
    case 54:
      result = "(vp::vx::Output_Port_Type)54]";
      break;
    case 55:
      result = "(vp::vx::Output_Port_Type)55]";
      break;
    case 56:
      result = "(vp::vx::Output_Port_Type)56]";
      break;
    case 57:
      result = "(vp::vx::Output_Port_Type)57]";
      break;
    case 58:
      result = "(vp::vx::Output_Port_Type)58]";
      break;
    case 59:
      result = "(vp::vx::Output_Port_Type)59]";
      break;
    case 60:
      result = "(vp::vx::Output_Port_Type)60]";
      break;
    case 61:
      result = "(vp::vx::Output_Port_Type)61]";
      break;
    case 62:
      result = "(vp::vx::Output_Port_Type)62]";
      break;
    case 63:
      result = "(vp::vx::Output_Port_Type)63]";
      break;
    case 64:
      result = "(vp::vx::Output_Port_Type)64]";
      break;
    case 65:
      result = "(vp::vx::Output_Port_Type)65]";
      break;
    case 66:
      result = "(vp::vx::Output_Port_Type)66]";
      break;
    case 67:
      result = "(vp::vx::Output_Port_Type)67]";
      break;
    case 68:
      result = "(vp::vx::Output_Port_Type)68]";
      break;
    case 69:
      result = "(vp::vx::Output_Port_Type)69]";
      break;
    case 70:
      result = "(vp::vx::Output_Port_Type)70]";
      break;
    case 71:
      result = "(vp::vx::Output_Port_Type)71]";
      break;
    case 72:
      result = "(vp::vx::Output_Port_Type)72]";
      break;
    case 73:
      result = "(vp::vx::Output_Port_Type)73]";
      break;
    case 74:
      result = "(vp::vx::Output_Port_Type)74]";
      break;
    case 75:
      result = "(vp::vx::Output_Port_Type)75]";
      break;
    case 76:
      result = "(vp::vx::Output_Port_Type)76]";
      break;
    case 77:
      result = "(vp::vx::Output_Port_Type)77]";
      break;
    case 78:
      result = "(vp::vx::Output_Port_Type)78]";
      break;
    case 79:
      result = "(vp::vx::Output_Port_Type)79]";
      break;
    case 80:
      result = "(vp::vx::Output_Port_Type)80]";
      break;
    case 81:
      result = "(vp::vx::Output_Port_Type)81]";
      break;
    case 82:
      result = "(vp::vx::Output_Port_Type)82]";
      break;
    case 83:
      result = "(vp::vx::Output_Port_Type)83]";
      break;
    case 84:
      result = "(vp::vx::Output_Port_Type)84]";
      break;
    case 85:
      result = "(vp::vx::Output_Port_Type)85]";
      break;
    case 86:
      result = "(vp::vx::Output_Port_Type)86]";
      break;
    case 87:
      result = "(vp::vx::Output_Port_Type)87]";
      break;
    case 88:
      result = "(vp::vx::Output_Port_Type)88]";
      break;
    case 89:
      result = "(vp::vx::Output_Port_Type)89]";
      break;
    case 90:
      result = "(vp::vx::Output_Port_Type)90]";
      break;
    case 91:
      result = "(vp::vx::Output_Port_Type)91]";
      break;
    case 92:
      result = "(vp::vx::Output_Port_Type)92]";
      break;
    case 93:
      result = "(vp::vx::Output_Port_Type)93]";
      break;
    case 94:
      result = "(vp::vx::Output_Port_Type)94]";
      break;
    case 95:
      result = "(vp::vx::Output_Port_Type)95]";
      break;
    case 96:
      result = "(vp::vx::Output_Port_Type)96]";
      break;
    case 97:
      result = "(vp::vx::Output_Port_Type)97]";
      break;
    case 98:
      result = "(vp::vx::Output_Port_Type)98]";
      break;
    case 99:
      result = "(vp::vx::Output_Port_Type)99]";
      break;
    case 100:
      result = "(vp::vx::Output_Port_Type)100]";
      break;
    case 101:
      result = "(vp::vx::Output_Port_Type)101]";
      break;
    case 102:
      result = "(vp::vx::Output_Port_Type)102]";
      break;
    case 103:
      result = "(vp::vx::Output_Port_Type)103]";
      break;
    case 104:
      result = "(vp::vx::Output_Port_Type)104]";
      break;
    case 105:
      result = "(vp::vx::Output_Port_Type)105]";
      break;
    case 106:
      result = "(vp::vx::Output_Port_Type)106]";
      break;
    case 107:
      result = "(vp::vx::Output_Port_Type)107]";
      break;
    case 108:
      result = "(vp::vx::Output_Port_Type)108]";
      break;
    case 109:
      result = "(vp::vx::Output_Port_Type)109]";
      break;
    case 110:
      result = "(vp::vx::Output_Port_Type)110]";
      break;
    case 111:
      result = "(vp::vx::Output_Port_Type)111]";
      break;
    case 112:
      result = "(vp::vx::Output_Port_Type)112]";
      break;
    case 113:
      result = "(vp::vx::Output_Port_Type)113]";
      break;
    case 114:
      result = "(vp::vx::Output_Port_Type)114]";
      break;
    case 115:
      result = "(vp::vx::Output_Port_Type)115]";
      break;
    case 116:
      result = "(vp::vx::Output_Port_Type)116]";
      break;
    case 117:
      result = "(vp::vx::Output_Port_Type)117]";
      break;
    case 118:
      result = "(vp::vx::Output_Port_Type)118]";
      break;
    case 119:
      result = "(vp::vx::Output_Port_Type)119]";
      break;
    case 120:
      result = "(vp::vx::Output_Port_Type)120]";
      break;
    case 121:
      result = "(vp::vx::Output_Port_Type)121]";
      break;
    case 122:
      result = "(vp::vx::Output_Port_Type)122]";
      break;
    case 123:
      result = "(vp::vx::Output_Port_Type)123]";
      break;
    case 124:
      result = "(vp::vx::Output_Port_Type)124]";
      break;
    case 125:
      result = "(vp::vx::Output_Port_Type)125]";
      break;
    case 126:
      result = "(vp::vx::Output_Port_Type)126]";
      break;
    case 127:
      result = "(vp::vx::Output_Port_Type)127]";
      break;
    default:
      if (a1 == 128)
      {
        result = "(vp::vx::Output_Port_Type)128]";
      }

      else
      {
        result = "?";
      }

      break;
  }

  return result;
}

void std::__function::__func<void vp::vx::observe_global<std::optional<vp::vx::Output_Port_Type>,vp::vx::components::Audio_Injector::configure(void)::$_4>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::optional<vp::vx::Output_Port_Type>> &,vp::vx::components::Audio_Injector::configure(void)::$_4)::{lambda(unsigned int,std::optional<vp::vx::Output_Port_Type> const&)#1},std::allocator<void vp::vx::observe_global<std::optional<vp::vx::Output_Port_Type>,vp::vx::components::Audio_Injector::configure(void)::$_4>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::optional<vp::vx::Output_Port_Type>> &,vp::vx::components::Audio_Injector::configure(void)::$_4)::{lambda(unsigned int,std::optional<vp::vx::Output_Port_Type> const&)#1}>,void ()(unsigned int,std::optional<vp::vx::Output_Port_Type> const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::observe_global<std::optional<vp::vx::Output_Port_Type>,vp::vx::components::Audio_Injector::configure(void)::$_4>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::optional<vp::vx::Output_Port_Type>> &,vp::vx::components::Audio_Injector::configure(void)::$_4)::{lambda(unsigned int,std::optional<vp::vx::Output_Port_Type> const&)#1},std::allocator<void vp::vx::observe_global<std::optional<vp::vx::Output_Port_Type>,vp::vx::components::Audio_Injector::configure(void)::$_4>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::optional<vp::vx::Output_Port_Type>> &,vp::vx::components::Audio_Injector::configure(void)::$_4)::{lambda(unsigned int,std::optional<vp::vx::Output_Port_Type> const&)#1}>,void ()(unsigned int,std::optional<vp::vx::Output_Port_Type> const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t std::__function::__func<void vp::vx::observe_global<std::optional<vp::vx::Output_Port_Type>,vp::vx::components::Audio_Injector::configure(void)::$_4>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::optional<vp::vx::Output_Port_Type>> &,vp::vx::components::Audio_Injector::configure(void)::$_4)::{lambda(unsigned int,std::optional<vp::vx::Output_Port_Type> const&)#1},std::allocator<void vp::vx::observe_global<std::optional<vp::vx::Output_Port_Type>,vp::vx::components::Audio_Injector::configure(void)::$_4>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::optional<vp::vx::Output_Port_Type>> &,vp::vx::components::Audio_Injector::configure(void)::$_4)::{lambda(unsigned int,std::optional<vp::vx::Output_Port_Type> const&)#1}>,void ()(unsigned int,std::optional<vp::vx::Output_Port_Type> const&)>::__clone(uint64_t result, uint64_t a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881B34A8;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  *(a2 + 28) = 0;
  *(a2 + 25) = 0;
  return result;
}

void std::__function::__func<void vp::vx::observe_global<std::optional<vp::vx::Output_Port_Type>,vp::vx::components::Audio_Injector::configure(void)::$_4>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::optional<vp::vx::Output_Port_Type>> &,vp::vx::components::Audio_Injector::configure(void)::$_4)::{lambda(unsigned int,std::optional<vp::vx::Output_Port_Type> const&)#1},std::allocator<void vp::vx::observe_global<std::optional<vp::vx::Output_Port_Type>,vp::vx::components::Audio_Injector::configure(void)::$_4>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::optional<vp::vx::Output_Port_Type>> &,vp::vx::components::Audio_Injector::configure(void)::$_4)::{lambda(unsigned int,std::optional<vp::vx::Output_Port_Type> const&)#1}>,void ()(unsigned int,std::optional<vp::vx::Output_Port_Type> const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B34A8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::observe_global<std::optional<vp::vx::Output_Port_Type>,vp::vx::components::Audio_Injector::configure(void)::$_4>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::optional<vp::vx::Output_Port_Type>> &,vp::vx::components::Audio_Injector::configure(void)::$_4)::{lambda(unsigned int,std::optional<vp::vx::Output_Port_Type> const&)#1},std::allocator<void vp::vx::observe_global<std::optional<vp::vx::Output_Port_Type>,vp::vx::components::Audio_Injector::configure(void)::$_4>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::optional<vp::vx::Output_Port_Type>> &,vp::vx::components::Audio_Injector::configure(void)::$_4)::{lambda(unsigned int,std::optional<vp::vx::Output_Port_Type> const&)#1}>,void ()(unsigned int,std::optional<vp::vx::Output_Port_Type> const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B34A8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS_8optionalINS3_16Output_Port_TypeEEEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components14Audio_Injector9configureEvE3__3JbS7_EEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JbS7_EEERNS4_13State_ManagerESH_SO_EUlPPKNS4_5ValueEPSW_E_NS_9allocatorIS11_EEFvSZ_S10_EEclEOSZ_OS10_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = **a2;
  if (v5[2] == &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id)
  {
    v6 = vp::vx::data_flow::Value::view_storage(v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = vp::vx::data_flow::Value::view_storage(v3[1]);
  v8 = *v6;
  v9 = *v7 | 0x100000000;
  vp::vx::data_flow::Value::~Value(v4);
  *v4 = std::pmr::get_default_resource(v10);
  *(v4 + 1) = 0;
  *(v4 + 2) = &vp::vx::data_flow::Value::type_id<std::optional<vp::vx::Output_Port_Type>>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v4);
  v12 = 0x100000000;
  if (v8)
  {
    v12 = v9;
  }

  *result = v12;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS_8optionalINS3_16Output_Port_TypeEEEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components14Audio_Injector9configureEvE3__3JbS7_EEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JbS7_EEERNS4_13State_ManagerESH_SO_EUlPPKNS4_5ValueEPSW_E_NS_9allocatorIS11_EEFvSZ_S10_EE7__cloneEPNS0_6__baseIS14_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881B32D8;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t std::__function::__func<vp::vx::data_flow::State<std::optional<vp::vx::Input_Port_Type>>::register_listener(std::function<void ()(unsigned int,std::optional<vp::vx::Input_Port_Type> const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<std::optional<vp::vx::Input_Port_Type>>::register_listener(std::function<void ()(unsigned int,std::optional<vp::vx::Input_Port_Type> const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::operator()(uint64_t result, int *a2, vp::vx::data_flow::Value *this)
{
  if (*(result + 32))
  {
    v3 = *(this + 2) == &vp::vx::data_flow::Value::type_id<std::optional<vp::vx::Input_Port_Type>>(void)::s_type_id;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v4 = result;
    v5 = *a2;
    result = vp::vx::data_flow::Value::view_storage(this);
    if (result)
    {
      v6 = result;
      v8 = v5;
      v7 = *(v4 + 32);
      if (!v7)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      return (*(*v7 + 48))(v7, &v8, v6);
    }
  }

  return result;
}

BOOL vp::vx::data_flow::Value::Type_ID_Eraser<std::optional<vp::vx::Input_Port_Type>>::compare_value(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 4);
  v4 = *(a2 + 4);
  result = v4 == v3;
  if (v4 == v3 && v4 != 0)
  {
    return *a2 == *a3;
  }

  return result;
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<std::optional<vp::vx::Input_Port_Type>>::view_storage(uint64_t a1, uint64_t a2)
{
  return a2;
}

{
  return a2;
}

void std::__function::__func<vp::vx::data_flow::State<std::optional<vp::vx::Input_Port_Type>>::register_listener(std::function<void ()(unsigned int,std::optional<vp::vx::Input_Port_Type> const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<std::optional<vp::vx::Input_Port_Type>>::register_listener(std::function<void ()(unsigned int,std::optional<vp::vx::Input_Port_Type> const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(unsigned int,std::optional<vp::vx::Input_Port_Type> const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<vp::vx::data_flow::State<std::optional<vp::vx::Input_Port_Type>>::register_listener(std::function<void ()(unsigned int,std::optional<vp::vx::Input_Port_Type> const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<std::optional<vp::vx::Input_Port_Type>>::register_listener(std::function<void ()(unsigned int,std::optional<vp::vx::Input_Port_Type> const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B33D0;
  std::__function::__value_func<void ()(unsigned int,std::optional<vp::vx::Input_Port_Type> const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<vp::vx::data_flow::State<std::optional<vp::vx::Input_Port_Type>>::register_listener(std::function<void ()(unsigned int,std::optional<vp::vx::Input_Port_Type> const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<std::optional<vp::vx::Input_Port_Type>>::register_listener(std::function<void ()(unsigned int,std::optional<vp::vx::Input_Port_Type> const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B33D0;
  std::__function::__value_func<void ()(unsigned int,std::optional<vp::vx::Input_Port_Type> const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<void vp::vx::observe_global<std::optional<vp::vx::Input_Port_Type>,vp::vx::components::Audio_Injector::configure(void)::$_2>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::optional<vp::vx::Input_Port_Type>> &,vp::vx::components::Audio_Injector::configure(void)::$_2)::{lambda(unsigned int,std::optional<vp::vx::Input_Port_Type> const&)#1},std::allocator<void vp::vx::observe_global<std::optional<vp::vx::Input_Port_Type>,vp::vx::components::Audio_Injector::configure(void)::$_2>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::optional<vp::vx::Input_Port_Type>> &,vp::vx::components::Audio_Injector::configure(void)::$_2)::{lambda(unsigned int,std::optional<vp::vx::Input_Port_Type> const&)#1}>,void ()(unsigned int,std::optional<vp::vx::Input_Port_Type> const&)>::operator()(uint64_t a1, unsigned int *a2, uint64_t *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 16);
  if (v4)
  {
    v6 = *a2;
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 8);
      if (v9)
      {
        v10 = *a3;
        if ((v10 & 0x100000000) != 0)
        {
          v11 = vp::vx::legacy_cast_noexcept<vp::vx::Input_Port_Type>(v10);
          if (v11 <= 0x100000000)
          {
            LODWORD(v11) = 0;
          }

          v12 = bswap32(v11);
          *(&__dst + 1) = v12;
          if ((v12 - 32) > 0x5E || ((v12 >> 8) - 32) > 0x5E || ((v12 << 8 >> 24) - 32) > 0x5E || ((v12 >> 24) - 32) > 0x5E)
          {
            std::to_string(&v19, v11);
          }

          else
          {
            *(&__dst + 5) = 39;
            LOBYTE(__dst) = 39;
            std::string::basic_string[abi:ne200100]<0>(&v19, &__dst);
          }

          if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v13 = &v19;
          }

          else
          {
            v13 = v19.__r_.__value_.__r.__words[0];
          }

          v14 = vp::reflect_value_name_tag<vp::vx::Input_Port_Type,128ul>(v10);
          if (v15 >= 0x7FFFFFFFFFFFFFF8)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          v16 = v15;
          if (v15 >= 0x17)
          {
            operator new();
          }

          v24 = v15;
          if (v15)
          {
            memmove(&__dst, v14, v15);
          }

          *(&__dst + v16) = 0;
          p_dst = &__dst;
          if (v24 < 0)
          {
            p_dst = __dst;
          }

          caulk::make_string("microphone port type for audio injectors is %s (%s)", v21, v13, p_dst);
          if (v24 < 0)
          {
            operator delete(__dst);
          }

          if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v19.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          std::string::basic_string[abi:ne200100]<0>(v21, "microphone port type for audio injectors is undefined");
        }

        *&v19.__r_.__value_.__l.__data_ = *v21;
        *(&v19.__r_.__value_.__r.__words[1] + 7) = *&v21[15];
        *(&v19.__r_.__value_.__s + 23) = v22;
        v20 = 1;
        (*(*v9 + 16))(v9, v6, &v19);
        if (v20 == 1 && SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v19.__r_.__value_.__l.__data_);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

void sub_2725CBF24(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_2725CBF3C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x2725CBE90);
  }

  JUMPOUT(0x2725CBF2CLL);
}

char *vp::reflect_value_name_tag<vp::vx::Input_Port_Type,128ul>(int a1)
{
  v1 = vp::detail::reflect_value_name<(vp::vx::Input_Port_Type)0,128ul>(a1);
  if (v2)
  {
    v3 = &v1[v2];
    for (i = v2; i; --i)
    {
      v5 = *--v3;
      if (v5 == 58)
      {
        v6 = v3 - v1 + 1;
        if (v2 < v6)
        {
          std::__throw_out_of_range[abi:ne200100]("string_view::substr");
        }

        return &v1[v6];
      }
    }
  }

  v6 = 0;
  return &v1[v6];
}

char *vp::detail::reflect_value_name<(vp::vx::Input_Port_Type)0,128ul>(int a1)
{
  result = "vp::vx::Input_Port_Type::Unknown]";
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      result = "vp::vx::Input_Port_Type::Microphone_Built_In]";
      break;
    case 2:
      result = "vp::vx::Input_Port_Type::Microphone_Wired]";
      break;
    case 3:
      result = "vp::vx::Input_Port_Type::Microphone_Bluetooth_HFP]";
      break;
    case 4:
      result = "vp::vx::Input_Port_Type::Bluetooth_LE_Input]";
      break;
    case 5:
      result = "vp::vx::Input_Port_Type::TTY_Input]";
      break;
    case 6:
      result = "vp::vx::Input_Port_Type::USB_Audio_Input]";
      break;
    case 7:
      result = "vp::vx::Input_Port_Type::Car_Play_Main_Input]";
      break;
    case 8:
      result = "vp::vx::Input_Port_Type::Continuity_Microphone]";
      break;
    case 9:
      result = "(vp::vx::Input_Port_Type)9]";
      break;
    case 10:
      result = "(vp::vx::Input_Port_Type)10]";
      break;
    case 11:
      result = "(vp::vx::Input_Port_Type)11]";
      break;
    case 12:
      result = "(vp::vx::Input_Port_Type)12]";
      break;
    case 13:
      result = "(vp::vx::Input_Port_Type)13]";
      break;
    case 14:
      result = "(vp::vx::Input_Port_Type)14]";
      break;
    case 15:
      result = "(vp::vx::Input_Port_Type)15]";
      break;
    case 16:
      result = "(vp::vx::Input_Port_Type)16]";
      break;
    case 17:
      result = "(vp::vx::Input_Port_Type)17]";
      break;
    case 18:
      result = "(vp::vx::Input_Port_Type)18]";
      break;
    case 19:
      result = "(vp::vx::Input_Port_Type)19]";
      break;
    case 20:
      result = "(vp::vx::Input_Port_Type)20]";
      break;
    case 21:
      result = "(vp::vx::Input_Port_Type)21]";
      break;
    case 22:
      result = "(vp::vx::Input_Port_Type)22]";
      break;
    case 23:
      result = "(vp::vx::Input_Port_Type)23]";
      break;
    case 24:
      result = "(vp::vx::Input_Port_Type)24]";
      break;
    case 25:
      result = "(vp::vx::Input_Port_Type)25]";
      break;
    case 26:
      result = "(vp::vx::Input_Port_Type)26]";
      break;
    case 27:
      result = "(vp::vx::Input_Port_Type)27]";
      break;
    case 28:
      result = "(vp::vx::Input_Port_Type)28]";
      break;
    case 29:
      result = "(vp::vx::Input_Port_Type)29]";
      break;
    case 30:
      result = "(vp::vx::Input_Port_Type)30]";
      break;
    case 31:
      result = "(vp::vx::Input_Port_Type)31]";
      break;
    case 32:
      result = "(vp::vx::Input_Port_Type)32]";
      break;
    case 33:
      result = "(vp::vx::Input_Port_Type)33]";
      break;
    case 34:
      result = "(vp::vx::Input_Port_Type)34]";
      break;
    case 35:
      result = "(vp::vx::Input_Port_Type)35]";
      break;
    case 36:
      result = "(vp::vx::Input_Port_Type)36]";
      break;
    case 37:
      result = "(vp::vx::Input_Port_Type)37]";
      break;
    case 38:
      result = "(vp::vx::Input_Port_Type)38]";
      break;
    case 39:
      result = "(vp::vx::Input_Port_Type)39]";
      break;
    case 40:
      result = "(vp::vx::Input_Port_Type)40]";
      break;
    case 41:
      result = "(vp::vx::Input_Port_Type)41]";
      break;
    case 42:
      result = "(vp::vx::Input_Port_Type)42]";
      break;
    case 43:
      result = "(vp::vx::Input_Port_Type)43]";
      break;
    case 44:
      result = "(vp::vx::Input_Port_Type)44]";
      break;
    case 45:
      result = "(vp::vx::Input_Port_Type)45]";
      break;
    case 46:
      result = "(vp::vx::Input_Port_Type)46]";
      break;
    case 47:
      result = "(vp::vx::Input_Port_Type)47]";
      break;
    case 48:
      result = "(vp::vx::Input_Port_Type)48]";
      break;
    case 49:
      result = "(vp::vx::Input_Port_Type)49]";
      break;
    case 50:
      result = "(vp::vx::Input_Port_Type)50]";
      break;
    case 51:
      result = "(vp::vx::Input_Port_Type)51]";
      break;
    case 52:
      result = "(vp::vx::Input_Port_Type)52]";
      break;
    case 53:
      result = "(vp::vx::Input_Port_Type)53]";
      break;
    case 54:
      result = "(vp::vx::Input_Port_Type)54]";
      break;
    case 55:
      result = "(vp::vx::Input_Port_Type)55]";
      break;
    case 56:
      result = "(vp::vx::Input_Port_Type)56]";
      break;
    case 57:
      result = "(vp::vx::Input_Port_Type)57]";
      break;
    case 58:
      result = "(vp::vx::Input_Port_Type)58]";
      break;
    case 59:
      result = "(vp::vx::Input_Port_Type)59]";
      break;
    case 60:
      result = "(vp::vx::Input_Port_Type)60]";
      break;
    case 61:
      result = "(vp::vx::Input_Port_Type)61]";
      break;
    case 62:
      result = "(vp::vx::Input_Port_Type)62]";
      break;
    case 63:
      result = "(vp::vx::Input_Port_Type)63]";
      break;
    case 64:
      result = "(vp::vx::Input_Port_Type)64]";
      break;
    case 65:
      result = "(vp::vx::Input_Port_Type)65]";
      break;
    case 66:
      result = "(vp::vx::Input_Port_Type)66]";
      break;
    case 67:
      result = "(vp::vx::Input_Port_Type)67]";
      break;
    case 68:
      result = "(vp::vx::Input_Port_Type)68]";
      break;
    case 69:
      result = "(vp::vx::Input_Port_Type)69]";
      break;
    case 70:
      result = "(vp::vx::Input_Port_Type)70]";
      break;
    case 71:
      result = "(vp::vx::Input_Port_Type)71]";
      break;
    case 72:
      result = "(vp::vx::Input_Port_Type)72]";
      break;
    case 73:
      result = "(vp::vx::Input_Port_Type)73]";
      break;
    case 74:
      result = "(vp::vx::Input_Port_Type)74]";
      break;
    case 75:
      result = "(vp::vx::Input_Port_Type)75]";
      break;
    case 76:
      result = "(vp::vx::Input_Port_Type)76]";
      break;
    case 77:
      result = "(vp::vx::Input_Port_Type)77]";
      break;
    case 78:
      result = "(vp::vx::Input_Port_Type)78]";
      break;
    case 79:
      result = "(vp::vx::Input_Port_Type)79]";
      break;
    case 80:
      result = "(vp::vx::Input_Port_Type)80]";
      break;
    case 81:
      result = "(vp::vx::Input_Port_Type)81]";
      break;
    case 82:
      result = "(vp::vx::Input_Port_Type)82]";
      break;
    case 83:
      result = "(vp::vx::Input_Port_Type)83]";
      break;
    case 84:
      result = "(vp::vx::Input_Port_Type)84]";
      break;
    case 85:
      result = "(vp::vx::Input_Port_Type)85]";
      break;
    case 86:
      result = "(vp::vx::Input_Port_Type)86]";
      break;
    case 87:
      result = "(vp::vx::Input_Port_Type)87]";
      break;
    case 88:
      result = "(vp::vx::Input_Port_Type)88]";
      break;
    case 89:
      result = "(vp::vx::Input_Port_Type)89]";
      break;
    case 90:
      result = "(vp::vx::Input_Port_Type)90]";
      break;
    case 91:
      result = "(vp::vx::Input_Port_Type)91]";
      break;
    case 92:
      result = "(vp::vx::Input_Port_Type)92]";
      break;
    case 93:
      result = "(vp::vx::Input_Port_Type)93]";
      break;
    case 94:
      result = "(vp::vx::Input_Port_Type)94]";
      break;
    case 95:
      result = "(vp::vx::Input_Port_Type)95]";
      break;
    case 96:
      result = "(vp::vx::Input_Port_Type)96]";
      break;
    case 97:
      result = "(vp::vx::Input_Port_Type)97]";
      break;
    case 98:
      result = "(vp::vx::Input_Port_Type)98]";
      break;
    case 99:
      result = "(vp::vx::Input_Port_Type)99]";
      break;
    case 100:
      result = "(vp::vx::Input_Port_Type)100]";
      break;
    case 101:
      result = "(vp::vx::Input_Port_Type)101]";
      break;
    case 102:
      result = "(vp::vx::Input_Port_Type)102]";
      break;
    case 103:
      result = "(vp::vx::Input_Port_Type)103]";
      break;
    case 104:
      result = "(vp::vx::Input_Port_Type)104]";
      break;
    case 105:
      result = "(vp::vx::Input_Port_Type)105]";
      break;
    case 106:
      result = "(vp::vx::Input_Port_Type)106]";
      break;
    case 107:
      result = "(vp::vx::Input_Port_Type)107]";
      break;
    case 108:
      result = "(vp::vx::Input_Port_Type)108]";
      break;
    case 109:
      result = "(vp::vx::Input_Port_Type)109]";
      break;
    case 110:
      result = "(vp::vx::Input_Port_Type)110]";
      break;
    case 111:
      result = "(vp::vx::Input_Port_Type)111]";
      break;
    case 112:
      result = "(vp::vx::Input_Port_Type)112]";
      break;
    case 113:
      result = "(vp::vx::Input_Port_Type)113]";
      break;
    case 114:
      result = "(vp::vx::Input_Port_Type)114]";
      break;
    case 115:
      result = "(vp::vx::Input_Port_Type)115]";
      break;
    case 116:
      result = "(vp::vx::Input_Port_Type)116]";
      break;
    case 117:
      result = "(vp::vx::Input_Port_Type)117]";
      break;
    case 118:
      result = "(vp::vx::Input_Port_Type)118]";
      break;
    case 119:
      result = "(vp::vx::Input_Port_Type)119]";
      break;
    case 120:
      result = "(vp::vx::Input_Port_Type)120]";
      break;
    case 121:
      result = "(vp::vx::Input_Port_Type)121]";
      break;
    case 122:
      result = "(vp::vx::Input_Port_Type)122]";
      break;
    case 123:
      result = "(vp::vx::Input_Port_Type)123]";
      break;
    case 124:
      result = "(vp::vx::Input_Port_Type)124]";
      break;
    case 125:
      result = "(vp::vx::Input_Port_Type)125]";
      break;
    case 126:
      result = "(vp::vx::Input_Port_Type)126]";
      break;
    case 127:
      result = "(vp::vx::Input_Port_Type)127]";
      break;
    default:
      if (a1 == 128)
      {
        result = "(vp::vx::Input_Port_Type)128]";
      }

      else
      {
        result = "?";
      }

      break;
  }

  return result;
}

void std::__function::__func<void vp::vx::observe_global<std::optional<vp::vx::Input_Port_Type>,vp::vx::components::Audio_Injector::configure(void)::$_2>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::optional<vp::vx::Input_Port_Type>> &,vp::vx::components::Audio_Injector::configure(void)::$_2)::{lambda(unsigned int,std::optional<vp::vx::Input_Port_Type> const&)#1},std::allocator<void vp::vx::observe_global<std::optional<vp::vx::Input_Port_Type>,vp::vx::components::Audio_Injector::configure(void)::$_2>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::optional<vp::vx::Input_Port_Type>> &,vp::vx::components::Audio_Injector::configure(void)::$_2)::{lambda(unsigned int,std::optional<vp::vx::Input_Port_Type> const&)#1}>,void ()(unsigned int,std::optional<vp::vx::Input_Port_Type> const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::observe_global<std::optional<vp::vx::Input_Port_Type>,vp::vx::components::Audio_Injector::configure(void)::$_2>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::optional<vp::vx::Input_Port_Type>> &,vp::vx::components::Audio_Injector::configure(void)::$_2)::{lambda(unsigned int,std::optional<vp::vx::Input_Port_Type> const&)#1},std::allocator<void vp::vx::observe_global<std::optional<vp::vx::Input_Port_Type>,vp::vx::components::Audio_Injector::configure(void)::$_2>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::optional<vp::vx::Input_Port_Type>> &,vp::vx::components::Audio_Injector::configure(void)::$_2)::{lambda(unsigned int,std::optional<vp::vx::Input_Port_Type> const&)#1}>,void ()(unsigned int,std::optional<vp::vx::Input_Port_Type> const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t std::__function::__func<void vp::vx::observe_global<std::optional<vp::vx::Input_Port_Type>,vp::vx::components::Audio_Injector::configure(void)::$_2>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::optional<vp::vx::Input_Port_Type>> &,vp::vx::components::Audio_Injector::configure(void)::$_2)::{lambda(unsigned int,std::optional<vp::vx::Input_Port_Type> const&)#1},std::allocator<void vp::vx::observe_global<std::optional<vp::vx::Input_Port_Type>,vp::vx::components::Audio_Injector::configure(void)::$_2>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::optional<vp::vx::Input_Port_Type>> &,vp::vx::components::Audio_Injector::configure(void)::$_2)::{lambda(unsigned int,std::optional<vp::vx::Input_Port_Type> const&)#1}>,void ()(unsigned int,std::optional<vp::vx::Input_Port_Type> const&)>::__clone(uint64_t result, uint64_t a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881B3418;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  *(a2 + 28) = 0;
  *(a2 + 25) = 0;
  return result;
}

void std::__function::__func<void vp::vx::observe_global<std::optional<vp::vx::Input_Port_Type>,vp::vx::components::Audio_Injector::configure(void)::$_2>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::optional<vp::vx::Input_Port_Type>> &,vp::vx::components::Audio_Injector::configure(void)::$_2)::{lambda(unsigned int,std::optional<vp::vx::Input_Port_Type> const&)#1},std::allocator<void vp::vx::observe_global<std::optional<vp::vx::Input_Port_Type>,vp::vx::components::Audio_Injector::configure(void)::$_2>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::optional<vp::vx::Input_Port_Type>> &,vp::vx::components::Audio_Injector::configure(void)::$_2)::{lambda(unsigned int,std::optional<vp::vx::Input_Port_Type> const&)#1}>,void ()(unsigned int,std::optional<vp::vx::Input_Port_Type> const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B3418;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::observe_global<std::optional<vp::vx::Input_Port_Type>,vp::vx::components::Audio_Injector::configure(void)::$_2>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::optional<vp::vx::Input_Port_Type>> &,vp::vx::components::Audio_Injector::configure(void)::$_2)::{lambda(unsigned int,std::optional<vp::vx::Input_Port_Type> const&)#1},std::allocator<void vp::vx::observe_global<std::optional<vp::vx::Input_Port_Type>,vp::vx::components::Audio_Injector::configure(void)::$_2>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<std::optional<vp::vx::Input_Port_Type>> &,vp::vx::components::Audio_Injector::configure(void)::$_2)::{lambda(unsigned int,std::optional<vp::vx::Input_Port_Type> const&)#1}>,void ()(unsigned int,std::optional<vp::vx::Input_Port_Type> const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B3418;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS_8optionalINS3_15Input_Port_TypeEEEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components14Audio_Injector9configureEvE3__1JbS7_EEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JbS7_EEERNS4_13State_ManagerESH_SO_EUlPPKNS4_5ValueEPSW_E_NS_9allocatorIS11_EEFvSZ_S10_EEclEOSZ_OS10_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = **a2;
  if (v5[2] == &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id)
  {
    v6 = vp::vx::data_flow::Value::view_storage(v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = vp::vx::data_flow::Value::view_storage(v3[1]);
  v8 = *v6;
  v9 = *v7 | 0x100000000;
  vp::vx::data_flow::Value::~Value(v4);
  *v4 = std::pmr::get_default_resource(v10);
  *(v4 + 1) = 0;
  *(v4 + 2) = &vp::vx::data_flow::Value::type_id<std::optional<vp::vx::Input_Port_Type>>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v4);
  v12 = 0x100000000;
  if (v8)
  {
    v12 = v9;
  }

  *result = v12;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS_8optionalINS3_15Input_Port_TypeEEEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components14Audio_Injector9configureEvE3__1JbS7_EEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JbS7_EEERNS4_13State_ManagerESH_SO_EUlPPKNS4_5ValueEPSW_E_NS_9allocatorIS11_EEFvSZ_S10_EE7__cloneEPNS0_6__baseIS14_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881B3228;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t std::__function::__func<vp::vx::data_flow::State<BOOL>::register_listener(std::function<void ()(unsigned int,BOOL const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<BOOL>::register_listener(std::function<void ()(unsigned int,BOOL const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::operator()(uint64_t result, int *a2, vp::vx::data_flow::Value *this)
{
  if (*(result + 32))
  {
    v3 = *(this + 2) == &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v4 = result;
    v5 = *a2;
    result = vp::vx::data_flow::Value::view_storage(this);
    if (result)
    {
      v6 = result;
      v8 = v5;
      v7 = *(v4 + 32);
      if (!v7)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      return (*(*v7 + 48))(v7, &v8, v6);
    }
  }

  return result;
}

void std::__function::__func<vp::vx::data_flow::State<BOOL>::register_listener(std::function<void ()(unsigned int,BOOL const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<BOOL>::register_listener(std::function<void ()(unsigned int,BOOL const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(unsigned int,BOOL const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<vp::vx::data_flow::State<BOOL>::register_listener(std::function<void ()(unsigned int,BOOL const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<BOOL>::register_listener(std::function<void ()(unsigned int,BOOL const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881C0C18;
  std::__function::__value_func<void ()(unsigned int,BOOL const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<vp::vx::data_flow::State<BOOL>::register_listener(std::function<void ()(unsigned int,BOOL const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<BOOL>::register_listener(std::function<void ()(unsigned int,BOOL const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881C0C18;
  std::__function::__value_func<void ()(unsigned int,BOOL const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<void vp::vx::observe_global<BOOL,vp::vx::components::Audio_Injector::configure(void)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::components::Audio_Injector::configure(void)::$_0)::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_global<BOOL,vp::vx::components::Audio_Injector::configure(void)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::components::Audio_Injector::configure(void)::$_0)::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::operator()(uint64_t a1, unsigned int *a2, _BYTE *a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v6 = *a2;
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 8);
      if (v9)
      {
        if (*a3)
        {
          v10 = "enabled";
        }

        else
        {
          v10 = "disabled";
        }

        caulk::make_string("I/O node audio injectors are %s", &v15, v10);
        __p = v15;
        *v12 = *v16;
        *&v12[7] = *&v16[7];
        v13 = v17;
        v14 = 1;
        (*(*v9 + 16))(v9, v6, &__p);
        if (v14 == 1 && v13 < 0)
        {
          operator delete(__p);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }
}

void std::__function::__func<void vp::vx::observe_global<BOOL,vp::vx::components::Audio_Injector::configure(void)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::components::Audio_Injector::configure(void)::$_0)::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_global<BOOL,vp::vx::components::Audio_Injector::configure(void)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::components::Audio_Injector::configure(void)::$_0)::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::observe_global<BOOL,vp::vx::components::Audio_Injector::configure(void)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::components::Audio_Injector::configure(void)::$_0)::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_global<BOOL,vp::vx::components::Audio_Injector::configure(void)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::components::Audio_Injector::configure(void)::$_0)::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t std::__function::__func<void vp::vx::observe_global<BOOL,vp::vx::components::Audio_Injector::configure(void)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::components::Audio_Injector::configure(void)::$_0)::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_global<BOOL,vp::vx::components::Audio_Injector::configure(void)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::components::Audio_Injector::configure(void)::$_0)::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::__clone(uint64_t result, uint64_t a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881B3388;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  *(a2 + 28) = 0;
  *(a2 + 25) = 0;
  return result;
}

void std::__function::__func<void vp::vx::observe_global<BOOL,vp::vx::components::Audio_Injector::configure(void)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::components::Audio_Injector::configure(void)::$_0)::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_global<BOOL,vp::vx::components::Audio_Injector::configure(void)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::components::Audio_Injector::configure(void)::$_0)::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B3388;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::observe_global<BOOL,vp::vx::components::Audio_Injector::configure(void)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::components::Audio_Injector::configure(void)::$_0)::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_global<BOOL,vp::vx::components::Audio_Injector::configure(void)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::components::Audio_Injector::configure(void)::$_0)::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B3388;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void vp::vx::components::Audio_Injector::set_state_owner(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v4 = *(a1 + 48);
  *(a1 + 40) = v3;
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

void vp::vx::components::Audio_Injector::set_state_observer(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v4 = *(a1 + 32);
  *(a1 + 24) = v3;
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

void vp::vx::components::Audio_Injector::set_state_manager(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v4 = *(a1 + 16);
  *(a1 + 8) = v3;
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

void vp::vx::components::Audio_Injector::~Audio_Injector(vp::vx::components::Audio_Injector *this)
{
  vp::vx::components::Audio_Injector::~Audio_Injector(this);

  JUMPOUT(0x2743CBFA0);
}

{
  v21 = *MEMORY[0x277D85DE8];
  log = vp::get_log(this);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    log_context_info = vp::get_log_context_info(__p, this, "vp::vx::components::Audio_Injector]", 34);
    v4 = v16;
    v5 = v16;
    v6 = __p[1];
    v7 = vp::get_log(log_context_info);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      if (v5 >= 0)
      {
        v8 = v4;
      }

      else
      {
        v8 = v6;
      }

      v9 = __p[0];
      if (v5 >= 0)
      {
        v9 = __p;
      }

      if (v8)
      {
        v10 = " ";
      }

      else
      {
        v10 = "";
      }

      *buf = 136315394;
      v18 = v9;
      v19 = 2080;
      v20 = v10;
      _os_log_impl(&dword_2724B4000, v7, OS_LOG_TYPE_DEBUG, "%s%sdestroyed", buf, 0x16u);
      LOBYTE(v5) = v16;
    }

    if ((v5 & 0x80) != 0)
    {
      operator delete(__p[0]);
    }
  }

  vp::vx::data_flow::State<void>::~State(this + 106);
  *(this + 30) = &unk_2881B8700;
  boost::container::vector<boost::container::dtl::pair<std::__fs::filesystem::path,std::shared_ptr<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player>>,vp::Allocator<boost::container::dtl::pair<std::__fs::filesystem::path,std::shared_ptr<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player>>>,void>::~vector(this + 49);
  boost::container::vector<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string>,vp::Allocator<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string>>,void>::~vector(this + 45);
  boost::container::vector<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string>,vp::Allocator<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string>>,void>::~vector(this + 41);
  if (*(this + 319) < 0)
  {
    operator delete(*(this + 37));
  }

  if (*(this + 295) < 0)
  {
    operator delete(*(this + 34));
  }

  if (*(this + 271) < 0)
  {
    operator delete(*(this + 31));
  }

  *(this + 7) = &unk_2881B8700;
  boost::container::vector<boost::container::dtl::pair<std::__fs::filesystem::path,std::shared_ptr<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player>>,vp::Allocator<boost::container::dtl::pair<std::__fs::filesystem::path,std::shared_ptr<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player>>>,void>::~vector(this + 26);
  boost::container::vector<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string>,vp::Allocator<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string>>,void>::~vector(this + 22);
  boost::container::vector<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string>,vp::Allocator<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string>>,void>::~vector(this + 18);
  if (*(this + 135) < 0)
  {
    operator delete(*(this + 14));
  }

  if (*(this + 111) < 0)
  {
    operator delete(*(this + 11));
  }

  if (*(this + 87) < 0)
  {
    operator delete(*(this + 8));
  }

  v11 = *(this + 6);
  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }

  v12 = *(this + 4);
  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }

  v13 = *(this + 2);
  if (v13)
  {
    std::__shared_weak_count::__release_weak(v13);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void *boost::container::vector<boost::container::dtl::pair<std::__fs::filesystem::path,std::shared_ptr<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player>>,vp::Allocator<boost::container::dtl::pair<std::__fs::filesystem::path,std::shared_ptr<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player>>>,void>::~vector(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = a1[1];
    do
    {
      --v2;
      std::pmr::polymorphic_allocator<boost::container::dtl::pair<std::__fs::filesystem::path,std::shared_ptr<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player>>>::destroy[abi:ne200100]<boost::container::dtl::pair<std::__fs::filesystem::path,std::shared_ptr<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player>>>(v3);
      v3 += 40;
    }

    while (v2);
  }

  v4 = a1[3];
  if (v4)
  {
    (*(**a1 + 24))(*a1, a1[1], 40 * v4, 8);
  }

  return a1;
}

void *boost::container::vector<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string>,vp::Allocator<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string>>,void>::~vector(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = (a1[1] + 31);
    do
    {
      if (*v3 < 0)
      {
        operator delete(*(v3 - 23));
      }

      v3 += 32;
      --v2;
    }

    while (v2);
  }

  v4 = a1[3];
  if (v4)
  {
    (*(**a1 + 24))(*a1, a1[1], 32 * v4, 8);
  }

  return a1;
}

void std::pmr::polymorphic_allocator<boost::container::dtl::pair<std::__fs::filesystem::path,std::shared_ptr<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player>>>::destroy[abi:ne200100]<boost::container::dtl::pair<std::__fs::filesystem::path,std::shared_ptr<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player>>>(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

void vp::vx::IO_Node_Audio_Injector_Factory::~IO_Node_Audio_Injector_Factory(vp::vx::IO_Node_Audio_Injector_Factory *this)
{
  *this = &unk_2881B8700;
  boost::container::vector<boost::container::dtl::pair<std::__fs::filesystem::path,std::shared_ptr<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player>>,vp::Allocator<boost::container::dtl::pair<std::__fs::filesystem::path,std::shared_ptr<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player>>>,void>::~vector(this + 19);
  boost::container::vector<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string>,vp::Allocator<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string>>,void>::~vector(this + 15);
  boost::container::vector<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string>,vp::Allocator<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string>>,void>::~vector(this + 11);
  if (*(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }

  if (*(this + 55) < 0)
  {
    operator delete(*(this + 4));
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  *this = &unk_2881B8700;
  boost::container::vector<boost::container::dtl::pair<std::__fs::filesystem::path,std::shared_ptr<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player>>,vp::Allocator<boost::container::dtl::pair<std::__fs::filesystem::path,std::shared_ptr<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player>>>,void>::~vector(this + 19);
  boost::container::vector<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string>,vp::Allocator<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string>>,void>::~vector(this + 15);
  boost::container::vector<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string>,vp::Allocator<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string>>,void>::~vector(this + 11);
  if (*(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }

  if (*(this + 55) < 0)
  {
    operator delete(*(this + 4));
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  JUMPOUT(0x2743CBFA0);
}

{
  *this = &unk_2881B8700;
  boost::container::vector<boost::container::dtl::pair<std::__fs::filesystem::path,std::shared_ptr<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player>>,vp::Allocator<boost::container::dtl::pair<std::__fs::filesystem::path,std::shared_ptr<vp::vx::IO_Node_Audio_Injector_Factory::Audio_Player>>>,void>::~vector(this + 19);
  boost::container::vector<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string>,vp::Allocator<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string>>,void>::~vector(this + 15);
  boost::container::vector<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string>,vp::Allocator<boost::container::dtl::pair<std::tuple<vp::vx::io::Object_ID<vp::vx::io::Node>,unsigned int>,std::string>>,void>::~vector(this + 11);
  if (*(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }

  if (*(this + 55) < 0)
  {
    operator delete(*(this + 4));
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

void vp::vx::components::Audio_Issue_Detector::end_configuration_change(uint64_t a1, int a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 16 * (a2 != 0) + 48);
  if (v3)
  {
    v5 = (*(*v3 + 32))(v3);
    if ((v5 & 1) == 0)
    {
      log = vp::get_log(v5);
      if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
      {
        log_context_info = vp::get_log_context_info(__p, a1, "vp::vx::components::Audio_Issue_Detector]", 40);
        v9 = v18;
        v10 = v18;
        v11 = __p[1];
        v12 = vp::get_log(log_context_info);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          if (v10 >= 0)
          {
            v13 = v9;
          }

          else
          {
            v13 = v11;
          }

          v14 = __p[0];
          if (v10 >= 0)
          {
            v14 = __p;
          }

          if (v13)
          {
            v15 = " ";
          }

          else
          {
            v15 = "";
          }

          *buf = 136315650;
          v20 = v14;
          v21 = 2080;
          v22 = v15;
          if (a2)
          {
            v16 = "downlink";
          }

          else
          {
            v16 = "uplink";
          }

          v23 = 2080;
          v24 = v16;
          _os_log_impl(&dword_2724B4000, v12, OS_LOG_TYPE_ERROR, "%s%sfailed to initialize %s audio issue detector client", buf, 0x20u);
          LOBYTE(v10) = v18;
        }

        if ((v10 & 0x80) != 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

void vp::vx::components::Audio_Issue_Detector::configure(std::__shared_weak_count **this)
{
  v37 = *MEMORY[0x277D85DE8];
  v2 = vp::get_log(this);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    log_context_info = vp::get_log_context_info(v35, this, "vp::vx::components::Audio_Issue_Detector]", 40);
    v4 = v35[23];
    v5 = v35[23];
    v6 = *&v35[8];
    v7 = vp::get_log(log_context_info);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      if (v5 >= 0)
      {
        v8 = v4;
      }

      else
      {
        v8 = v6;
      }

      v9 = *v35;
      if (v5 >= 0)
      {
        v9 = v35;
      }

      if (v8)
      {
        v10 = " ";
      }

      else
      {
        v10 = "";
      }

      *buf = 136315394;
      *&buf[4] = v9;
      *&buf[12] = 2080;
      *&buf[14] = v10;
      _os_log_impl(&dword_2724B4000, v7, OS_LOG_TYPE_INFO, "%s%sconfigure", buf, 0x16u);
      LOBYTE(v5) = v35[23];
    }

    if ((v5 & 0x80) != 0)
    {
      operator delete(*v35);
    }
  }

  v11 = this[3];
  if (v11)
  {
    v12 = std::__shared_weak_count::lock(v11);
    if (v12)
    {
      v13 = this[2];
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
        v33 = 0x100000000;
        (this[4]->__on_zero_shared)(v35);
        if (*v35)
        {
          operator new();
        }

        (v13->__on_zero_shared)(v35, v13, 72);
        v29 = *v35;
        v30 = *&v35[8];
        *&v35[8] = 0;
        *&v35[16] = 0;
        v14 = vp::vx::data_flow::State<void>::~State(v35);
        *buf = std::pmr::get_default_resource(v14);
        *&buf[8] = 0;
        *&buf[16] = 0;
        v31 = v29;
        *v35 = v30;
        *&v35[8] = &v31;
        *&v35[16] = buf;
        vp::vx::data_flow::Engine::do_with_shared_state_lock(v30, caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::data_flow::Engine::get_state_value(unsigned int,vp::vx::data_flow::Value &)::$_0>, v35);
        v15 = vp::vx::data_flow::Value::view_storage(buf);
        *__p = *v15;
        v28 = *(v15 + 16);
        *v15 = 0;
        *(v15 + 8) = 0;
        *(v15 + 16) = 0;
        vp::vx::data_flow::Value::~Value(buf);
        v16 = (*(MEMORY[0] + 24))(0, __p);
        v17 = __p[0];
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        if ((v16 & 1) == 0)
        {
          v18 = vp::get_log(v17);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            v19 = vp::get_log_context_info(buf, this, "vp::vx::components::Audio_Issue_Detector]", 40);
            v20 = buf[23];
            v25 = *&buf[8];
            log = vp::get_log(v19);
            if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
            {
              v21 = v25;
              if ((v20 & 0x80u) == 0)
              {
                v21 = v20;
              }

              if (buf[23] >= 0)
              {
                v22 = buf;
              }

              else
              {
                v22 = *buf;
              }

              v23 = v21 == 0;
              v24 = " ";
              if (v23)
              {
                v24 = "";
              }

              *v35 = 136315650;
              *&v35[4] = v22;
              *&v35[12] = 2080;
              *&v35[14] = v24;
              *&v35[22] = 2080;
              v36 = "uplink";
              _os_log_impl(&dword_2724B4000, log, OS_LOG_TYPE_ERROR, "%s%sfailed to set %s audio issue detector client's initial reporter IDs", v35, 0x20u);
            }

            if ((buf[23] & 0x80000000) != 0)
            {
              operator delete(*buf);
            }
          }
        }

        v32 = 0;
        operator new();
      }
    }
  }

  _os_crash();
  __break(1u);
}

void sub_2725CDE94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t std::unique_ptr<vp::vx::components::Audio_Issue_Detector::Node_Decorator_Factory,vp::Allocator_Delete<vp::vx::components::Audio_Issue_Detector::Node_Decorator_Factory>>::reset[abi:ne200100](uint64_t result, uint64_t a2)
{
  v3 = *result;
  *result = a2;
  if (v3)
  {
    return vp::Allocator_Delete<vp::vx::components::Audio_Issue_Detector::Node_Decorator_Factory>::operator()((result + 8), v3);
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(BOOL const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(BOOL const&)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(float const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(float const&)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__func<vp::vx::data_flow::State<float>::register_listener(std::function<void ()(float const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<float>::register_listener(std::function<void ()(float const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::operator()(uint64_t result, int a2, vp::vx::data_flow::Value *this)
{
  if (*(result + 32))
  {
    v3 = *(this + 2) == &vp::vx::data_flow::Value::type_id<float>(void)::s_type_id;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v4 = result;
    result = vp::vx::data_flow::Value::view_storage(this);
    if (result)
    {
      v5 = *(v4 + 32);
      if (!v5)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      v6 = *(*v5 + 48);

      return v6();
    }
  }

  return result;
}

float vp::vx::data_flow::Value::Type_ID_Eraser<float>::move_value(uint64_t a1, _DWORD *a2, float *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

float vp::vx::data_flow::Value::Type_ID_Eraser<float>::copy_value(uint64_t a1, _DWORD *a2, float *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<float>::view_storage(uint64_t a1, uint64_t a2)
{
  return a2;
}

{
  return a2;
}

void std::__function::__func<vp::vx::data_flow::State<float>::register_listener(std::function<void ()(float const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<float>::register_listener(std::function<void ()(float const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(float const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<vp::vx::data_flow::State<float>::register_listener(std::function<void ()(float const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<float>::register_listener(std::function<void ()(float const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B8B08;
  std::__function::__value_func<void ()(float const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<vp::vx::data_flow::State<float>::register_listener(std::function<void ()(float const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<float>::register_listener(std::function<void ()(float const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B8B08;
  std::__function::__value_func<void ()(float const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<vp::vx::components::Audio_Issue_Detector::configure(void)::$_2,std::allocator<vp::vx::components::Audio_Issue_Detector::configure(void)::$_2>,void ()(float const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<vp::vx::components::Audio_Issue_Detector::configure(void)::$_2,std::allocator<vp::vx::components::Audio_Issue_Detector::configure(void)::$_2>,void ()(float const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<vp::vx::components::Audio_Issue_Detector::configure(void)::$_2,std::allocator<vp::vx::components::Audio_Issue_Detector::configure(void)::$_2>,void ()(float const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881B3788;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<vp::vx::components::Audio_Issue_Detector::configure(void)::$_2,std::allocator<vp::vx::components::Audio_Issue_Detector::configure(void)::$_2>,void ()(float const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B3788;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<vp::vx::components::Audio_Issue_Detector::configure(void)::$_2,std::allocator<vp::vx::components::Audio_Issue_Detector::configure(void)::$_2>,void ()(float const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B3788;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t std::__function::__func<vp::vx::data_flow::State<BOOL>::register_listener(std::function<void ()(BOOL const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<BOOL>::register_listener(std::function<void ()(BOOL const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::operator()(uint64_t result, int a2, vp::vx::data_flow::Value *this)
{
  if (*(result + 32))
  {
    v3 = *(this + 2) == &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v4 = result;
    result = vp::vx::data_flow::Value::view_storage(this);
    if (result)
    {
      v5 = *(v4 + 32);
      if (!v5)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      v6 = *(*v5 + 48);

      return v6();
    }
  }

  return result;
}

void std::__function::__func<vp::vx::data_flow::State<BOOL>::register_listener(std::function<void ()(BOOL const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<BOOL>::register_listener(std::function<void ()(BOOL const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(BOOL const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<vp::vx::data_flow::State<BOOL>::register_listener(std::function<void ()(BOOL const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<BOOL>::register_listener(std::function<void ()(BOOL const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881C54C0;
  std::__function::__value_func<void ()(BOOL const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<vp::vx::data_flow::State<BOOL>::register_listener(std::function<void ()(BOOL const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<BOOL>::register_listener(std::function<void ()(BOOL const&)>,vp::vx::data_flow::Call_Immediately)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881C54C0;
  std::__function::__value_func<void ()(BOOL const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<vp::vx::components::Audio_Issue_Detector::configure(void)::$_1,std::allocator<vp::vx::components::Audio_Issue_Detector::configure(void)::$_1>,void ()(BOOL const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<vp::vx::components::Audio_Issue_Detector::configure(void)::$_1,std::allocator<vp::vx::components::Audio_Issue_Detector::configure(void)::$_1>,void ()(BOOL const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<vp::vx::components::Audio_Issue_Detector::configure(void)::$_1,std::allocator<vp::vx::components::Audio_Issue_Detector::configure(void)::$_1>,void ()(BOOL const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881B3740;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<vp::vx::components::Audio_Issue_Detector::configure(void)::$_1,std::allocator<vp::vx::components::Audio_Issue_Detector::configure(void)::$_1>,void ()(BOOL const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B3740;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<vp::vx::components::Audio_Issue_Detector::configure(void)::$_1,std::allocator<vp::vx::components::Audio_Issue_Detector::configure(void)::$_1>,void ()(BOOL const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B3740;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t vp::Allocator_Delete<vp::vx::components::Audio_Issue_Detector::Node_Decorator_Factory>::operator()(void *a1, void *a2)
{
  v4 = a2[16];
  if (v4)
  {
    a2[17] = v4;
    operator delete(v4);
  }

  v5 = a2[13];
  if (v5)
  {
    a2[14] = v5;
    operator delete(v5);
  }

  v6 = a2[10];
  if (v6)
  {
    a2[11] = v6;
    operator delete(v6);
  }

  std::__hash_table<vp::vx::io::Object_ID<vp::vx::io::Node>,std::hash<vp::vx::io::Object_ID<vp::vx::io::Node>>,std::equal_to<vp::vx::io::Object_ID<vp::vx::io::Node>>,std::allocator<vp::vx::io::Object_ID<vp::vx::io::Node>>>::~__hash_table((a2 + 5));
  v7 = a2[4];
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v8 = a2[2];
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v9 = a1[1];
  v10 = a1[2];
  v11 = *(**a1 + 24);

  return v11();
}

uint64_t std::__hash_table<vp::vx::io::Object_ID<vp::vx::io::Node>,std::hash<vp::vx::io::Object_ID<vp::vx::io::Node>>,std::equal_to<vp::vx::io::Object_ID<vp::vx::io::Node>>,std::allocator<vp::vx::io::Object_ID<vp::vx::io::Node>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void std::__shared_ptr_pointer<vp::vx::components::Audio_Issue_Detector::Node_Decorator_Factory *,vp::Allocator_Delete<vp::vx::components::Audio_Issue_Detector::Node_Decorator_Factory>,std::allocator<vp::vx::components::Audio_Issue_Detector::Node_Decorator_Factory>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743CBFA0);
}

uint64_t std::__function::__func<vp::vx::data_flow::State<std::vector<long long>>::register_listener(std::function<void ()(std::vector<long long> const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<std::vector<long long>>::register_listener(std::function<void ()(std::vector<long long> const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::operator()(uint64_t result, int a2, vp::vx::data_flow::Value *this)
{
  if (*(result + 32))
  {
    v3 = *(this + 2) == &vp::vx::data_flow::Value::type_id<std::vector<long long>>(void)::s_type_id;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v4 = result;
    result = vp::vx::data_flow::Value::view_storage(this);
    if (result)
    {
      v5 = *(v4 + 32);
      if (!v5)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      v6 = *(*v5 + 48);

      return v6();
    }
  }

  return result;
}

void std::__function::__func<vp::vx::data_flow::State<std::vector<long long>>::register_listener(std::function<void ()(std::vector<long long> const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<std::vector<long long>>::register_listener(std::function<void ()(std::vector<long long> const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(std::vector<long long> const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<vp::vx::data_flow::State<std::vector<long long>>::register_listener(std::function<void ()(std::vector<long long> const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<std::vector<long long>>::register_listener(std::function<void ()(std::vector<long long> const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B3678;
  std::__function::__value_func<void ()(std::vector<long long> const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<vp::vx::data_flow::State<std::vector<long long>>::register_listener(std::function<void ()(std::vector<long long> const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<std::vector<long long>>::register_listener(std::function<void ()(std::vector<long long> const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B3678;
  std::__function::__value_func<void ()(std::vector<long long> const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<vp::vx::components::Audio_Issue_Detector::configure(void)::$_0,std::allocator<vp::vx::components::Audio_Issue_Detector::configure(void)::$_0>,void ()(std::vector<long long> const&)>::operator()(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 8);
  v3 = (*(**(a1 + 16) + 24))(*(a1 + 16));
  if ((v3 & 1) == 0)
  {
    log = vp::get_log(v3);
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      log_context_info = vp::get_log_context_info(__p, v2, "vp::vx::components::Audio_Issue_Detector]", 40);
      v7 = v17;
      v8 = v17;
      v9 = __p[1];
      v10 = vp::get_log(log_context_info);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        if (v8 >= 0)
        {
          v11 = v7;
        }

        else
        {
          v11 = v9;
        }

        v12 = __p[0];
        if (v8 >= 0)
        {
          v12 = __p;
        }

        if (v11)
        {
          v13 = " ";
        }

        else
        {
          v13 = "";
        }

        v14 = *(a1 + 32);
        *buf = 136315650;
        v19 = v12;
        v20 = 2080;
        v21 = v13;
        if (v14)
        {
          v15 = "downlink";
        }

        else
        {
          v15 = "uplink";
        }

        v22 = 2080;
        v23 = v15;
        _os_log_impl(&dword_2724B4000, v10, OS_LOG_TYPE_ERROR, "%s%sfailed to set %s audio issue detector client's reporter IDs", buf, 0x20u);
        LOBYTE(v8) = v17;
      }

      if ((v8 & 0x80) != 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

void std::__function::__func<vp::vx::components::Audio_Issue_Detector::configure(void)::$_0,std::allocator<vp::vx::components::Audio_Issue_Detector::configure(void)::$_0>,void ()(std::vector<long long> const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<vp::vx::components::Audio_Issue_Detector::configure(void)::$_0,std::allocator<vp::vx::components::Audio_Issue_Detector::configure(void)::$_0>,void ()(std::vector<long long> const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<vp::vx::components::Audio_Issue_Detector::configure(void)::$_0,std::allocator<vp::vx::components::Audio_Issue_Detector::configure(void)::$_0>,void ()(std::vector<long long> const&)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881B36C0;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 32) = *(result + 32);
  return result;
}

void std::__function::__func<vp::vx::components::Audio_Issue_Detector::configure(void)::$_0,std::allocator<vp::vx::components::Audio_Issue_Detector::configure(void)::$_0>,void ()(std::vector<long long> const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B36C0;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<vp::vx::components::Audio_Issue_Detector::configure(void)::$_0,std::allocator<vp::vx::components::Audio_Issue_Detector::configure(void)::$_0>,void ()(std::vector<long long> const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B36C0;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t std::__shared_ptr_pointer<vp::services::Audio_Issue_Detector_Client  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<vp::services::Audio_Issue_Detector_Client  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743CBFA0);
}

void vp::vx::components::Audio_Issue_Detector::set_state_owner(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v4 = *(a1 + 24);
  *(a1 + 16) = v3;
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

void vp::vx::components::Audio_Issue_Detector::~Audio_Issue_Detector(std::__shared_weak_count **this)
{
  vp::vx::components::Audio_Issue_Detector::~Audio_Issue_Detector(this);

  JUMPOUT(0x2743CBFA0);
}

{
  v24 = *MEMORY[0x277D85DE8];
  log = vp::get_log(this);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    log_context_info = vp::get_log_context_info(__p, this, "vp::vx::components::Audio_Issue_Detector]", 40);
    v4 = v19;
    v5 = v19;
    v6 = __p[1];
    v7 = vp::get_log(log_context_info);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      if (v5 >= 0)
      {
        v8 = v4;
      }

      else
      {
        v8 = v6;
      }

      v9 = __p[0];
      if (v5 >= 0)
      {
        v9 = __p;
      }

      if (v8)
      {
        v10 = " ";
      }

      else
      {
        v10 = "";
      }

      *buf = 136315394;
      v21 = v9;
      v22 = 2080;
      v23 = v10;
      _os_log_impl(&dword_2724B4000, v7, OS_LOG_TYPE_DEBUG, "%s%sdestroyed", buf, 0x16u);
      LOBYTE(v5) = v19;
    }

    if ((v5 & 0x80) != 0)
    {
      operator delete(__p[0]);
    }
  }

  v11 = this[13];
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  v12 = this[11];
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v13 = this[9];
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  v14 = this[7];
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  v15 = this[5];
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  v16 = this[3];
  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void virtual thunk tovp::vx::components::Audio_Issue_Detector::Node_Decorator::~Node_Decorator(vp::vx::components::Audio_Issue_Detector::Node_Decorator *this)
{
  v1 = (this + *(*this - 24));
  v2 = v1[15];
  if (v2)
  {
    v1[16] = v2;
    operator delete(v2);
  }

  v3 = v1[12];
  if (v3)
  {
    v1[13] = v3;
    operator delete(v3);
  }

  v4 = v1[9];
  if (v4)
  {
    v1[10] = v4;
    operator delete(v4);
  }

  v5 = v1[8];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = v1[6];
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  *v1 = off_2881B38F0;
  v1[18] = off_2881B3988;
  std::unique_ptr<vp::vx::io::Node,vp::Allocator_Delete<vp::vx::io::Node>>::reset[abi:ne200100](v1 + 1, 0);
  v1[18] = &unk_2881C6630;
  v7 = v1[20];
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  v1 = (this + *(*this - 24));
  v2 = v1[15];
  if (v2)
  {
    v1[16] = v2;
    operator delete(v2);
  }

  v3 = v1[12];
  if (v3)
  {
    v1[13] = v3;
    operator delete(v3);
  }

  v4 = v1[9];
  if (v4)
  {
    v1[10] = v4;
    operator delete(v4);
  }

  v5 = v1[8];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = v1[6];
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  *v1 = off_2881B38F0;
  v1[18] = off_2881B3988;
  std::unique_ptr<vp::vx::io::Node,vp::Allocator_Delete<vp::vx::io::Node>>::reset[abi:ne200100](v1 + 1, 0);
  v1[18] = &unk_2881C6630;
  v7 = v1[20];
  if (v7)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void vp::vx::components::Audio_Issue_Detector::Node_Decorator::~Node_Decorator(vp::vx::components::Audio_Issue_Detector::Node_Decorator *this)
{
  v2 = *(this + 15);
  if (v2)
  {
    *(this + 16) = v2;
    operator delete(v2);
  }

  v3 = *(this + 12);
  if (v3)
  {
    *(this + 13) = v3;
    operator delete(v3);
  }

  v4 = *(this + 9);
  if (v4)
  {
    *(this + 10) = v4;
    operator delete(v4);
  }

  v5 = *(this + 8);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(this + 6);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  *this = off_2881B38F0;
  *(this + 18) = off_2881B3988;
  std::unique_ptr<vp::vx::io::Node,vp::Allocator_Delete<vp::vx::io::Node>>::reset[abi:ne200100](this + 1, 0);
  *(this + 18) = &unk_2881C6630;
  v7 = *(this + 20);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  JUMPOUT(0x2743CBFA0);
}

{
  v2 = *(this + 15);
  if (v2)
  {
    *(this + 16) = v2;
    operator delete(v2);
  }

  v3 = *(this + 12);
  if (v3)
  {
    *(this + 13) = v3;
    operator delete(v3);
  }

  v4 = *(this + 9);
  if (v4)
  {
    *(this + 10) = v4;
    operator delete(v4);
  }

  v5 = *(this + 8);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(this + 6);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  *this = off_2881B38F0;
  *(this + 18) = off_2881B3988;
  std::unique_ptr<vp::vx::io::Node,vp::Allocator_Delete<vp::vx::io::Node>>::reset[abi:ne200100](this + 1, 0);
  *(this + 18) = &unk_2881C6630;
  v7 = *(this + 20);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void *vp::vx::components::Audio_Issue_Detector::Node_Decorator::process(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v12 = *(a1 + 72);
  v13 = *(a1 + 80);
  if (v12 != v13)
  {
    while (1)
    {
      v14 = *v12;
      if (a3 <= v14)
      {
        break;
      }

      (*(**(a1 + 56) + 40))(*(a1 + 56), v12[1], 0, *(a2 + 24 * v14), *(a2 + 24 * v14 + 16), *(a2 + 24 * v14 + 8));
      v12 += 2;
      if (v12 == v13)
      {
        goto LABEL_4;
      }
    }

    _os_crash();
    __break(1u);
    goto LABEL_19;
  }

LABEL_4:
  result = (*(**(a1 + 8) + 80))(*(a1 + 8), a2, a3, a4, a5, a6);
  v16 = *(a1 + 120);
  v17 = *(a1 + 128);
  while (v16 != v17)
  {
    result = (***(a1 + 8))(*(a1 + 8));
    if (result)
    {
      v18 = *v16;
      result = (*(*result + 24))(v25);
      if (v28 != 1)
      {
        goto LABEL_11;
      }

      v19 = *(v16 + 1);
      v20 = *(v16 + 2);
      v21 = (*(a1 + 40) + (v20 >> 1));
      if (v20)
      {
        v19 = *(*v21 + v19);
      }

      result = v19(v21, *v25);
      if ((v28 & 1) == 0)
      {
LABEL_11:
        if (SHIBYTE(v26) < 0)
        {
          result = (*(*v27 + 24))(v27, v25[2], v26 & 0x7FFFFFFFFFFFFFFFLL, 1);
        }
      }
    }

    v16 += 6;
  }

  v22 = *(a1 + 96);
  v23 = *(a1 + 104);
  if (v22 != v23)
  {
    while (1)
    {
      v24 = *v22;
      if (a5 <= v24)
      {
        break;
      }

      result = (*(**(a1 + 56) + 40))(*(a1 + 56), v22[1], 0, *(a4 + 24 * v24), *(a4 + 24 * v24 + 16), *(a4 + 24 * v24 + 8));
      v22 += 2;
      if (v22 == v23)
      {
        return result;
      }
    }

LABEL_19:
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t vp::vx::components::Audio_Issue_Detector::Node_Decorator_Factory::new_node_decorator@<X0>(uint64_t result@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v28[1] = *MEMORY[0x277D85DE8];
  v18 = result;
  v6 = *(result + 48);
  if (v6)
  {
    v7 = vcnt_s8(v6);
    v7.i16[0] = vaddlv_u8(v7);
    if (v7.u32[0] > 1uLL)
    {
      v8 = a2;
      if (v6 <= a2)
      {
        v8 = a2 % v6;
      }
    }

    else
    {
      v8 = (v6 - 1) & a2;
    }

    v9 = *(*(result + 40) + 8 * v8);
    if (v9)
    {
      for (i = *v9; i; i = *i)
      {
        v11 = i[1];
        if (v11 == a2)
        {
          if (*(i + 4) == a2)
          {
            v28[0] = a4;
            v22 = 0;
            v23 = a4;
            v24 = xmmword_272756590;
            v14 = (*(*a4 + 16))(a4, 168, 8);
            __p[0] = v14;
            v25 = __p;
            v26 = v28;
            v27 = 0;
            v15 = *a3;
            *a3 = 0;
            __p[3] = v15;
            v20 = *(a3 + 8);
            v21 = *(a3 + 24);
            v17 = *(v18 + 8);
            if (*(&v17 + 1))
            {
              atomic_fetch_add_explicit((*(&v17 + 1) + 8), 1uLL, memory_order_relaxed);
            }

            v16 = *(v18 + 24);
            if (*(&v16 + 1))
            {
              atomic_fetch_add_explicit((*(&v16 + 1) + 8), 1uLL, memory_order_relaxed);
            }

            v14[18] = &unk_2881C6630;
            operator new();
          }
        }

        else
        {
          if (v7.u32[0] > 1uLL)
          {
            if (v11 >= v6)
            {
              v11 %= v6;
            }
          }

          else
          {
            v11 &= v6 - 1;
          }

          if (v11 != v8)
          {
            break;
          }
        }
      }
    }
  }

  v12 = *a3;
  *a3 = 0;
  *a5 = v12;
  *(a5 + 8) = *(a3 + 8);
  *(a5 + 24) = *(a3 + 24);
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2725D03F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15, uint64_t a16, uint64_t a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

char *vp::reflect_value_name_tag<vp::services::Audio_Issue_Detector_Node_ID,128ul>(int a1)
{
  v1 = vp::detail::reflect_value_name<(vp::services::Audio_Issue_Detector_Node_ID)0,128ul>(a1);
  if (v2)
  {
    v3 = &v1[v2];
    for (i = v2; i; --i)
    {
      v5 = *--v3;
      if (v5 == 58)
      {
        v6 = v3 - v1 + 1;
        if (v2 < v6)
        {
          std::__throw_out_of_range[abi:ne200100]("string_view::substr");
        }

        return &v1[v6];
      }
    }
  }

  v6 = 0;
  return &v1[v6];
}

_BYTE *std::string::basic_string<std::string_view,0>(_BYTE *__dst, void *__src, size_t __len)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  __dst[23] = __len;
  if (__len)
  {
    memmove(__dst, __src, __len);
  }

  __dst[__len] = 0;
  return __dst;
}

void **std::unique_ptr<vp::vx::components::Audio_Issue_Detector::Node_Decorator,vp::Allocator_Delete<vp::vx::components::Audio_Issue_Detector::Node_Decorator>>::reset[abi:ne200100](void **result, void *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = result;
    v4 = v2[15];
    if (v4)
    {
      v2[16] = v4;
      operator delete(v4);
    }

    v5 = v2[12];
    if (v5)
    {
      v2[13] = v5;
      operator delete(v5);
    }

    v6 = v2[9];
    if (v6)
    {
      v2[10] = v6;
      operator delete(v6);
    }

    v7 = v2[8];
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    v8 = v2[6];
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    *v2 = off_2881B38F0;
    v2[18] = off_2881B3988;
    std::unique_ptr<vp::vx::io::Node,vp::Allocator_Delete<vp::vx::io::Node>>::reset[abi:ne200100](v2 + 1, 0);
    v2[18] = &unk_2881C6630;
    v9 = v2[20];
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    return (*(*v3[1] + 24))(v3[1], v2, v3[2], v3[3]);
  }

  return result;
}

unsigned int *std::__introsort<std::_ClassicAlgPolicy,vp::vx::components::Audio_Issue_Detector::Node_Decorator::add_audio_issue_detector(unsigned int,vp::vx::io::Direction,vp::services::Audio_Issue_Detector_Node_ID)::$_0 &,std::tuple<unsigned int,vp::services::Audio_Issue_Detector_Node_ID> *,false>(unsigned int *result, unsigned int *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = a2 - 2;
  v9 = v7;
  while (1)
  {
    v7 = v9;
    v10 = (a2 - v9) >> 3;
    if (v10 <= 2)
    {
      if (v10 < 2)
      {
        return result;
      }

      if (v10 == 2)
      {
        v93 = *v9;
        if (*v8 > *v9)
        {
          v94 = v9[1];
          v95 = *(a2 - 1);
          *v9 = *v8;
          v9[1] = v95;
          *(a2 - 2) = v93;
          *(a2 - 1) = v94;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v10 == 3)
    {
      break;
    }

    if (v10 == 4)
    {
      v102 = v9[1];
      v103 = v9[2];
      v104 = v9 + 3;
      v105 = v9[3];
      v106 = *v9;
      v107 = v9[4];
      if (v103 <= *v9)
      {
        if (v107 > v103)
        {
          v164 = v9[5];
          v9[2] = v107;
          v9[3] = v164;
          v9[4] = v103;
          v9[5] = v105;
          if (v107 > v106)
          {
            v9[1] = v164;
            v9[2] = v106;
            *v9 = v107;
            goto LABEL_196;
          }

LABEL_197:
          v107 = v103;
        }
      }

      else
      {
        v104 = v9 + 5;
        if (v107 > v103)
        {
          v108 = v9[5];
          v9[4] = v106;
          *v9 = v107;
          v9[1] = v108;
          goto LABEL_195;
        }

        *v9 = v103;
        v9[1] = v105;
        v9[2] = v106;
        v9[3] = v102;
        if (v107 > v106)
        {
          v9[3] = v9[5];
          v9[4] = v106;
          v9[2] = v107;
LABEL_195:
          v103 = v106;
LABEL_196:
          *v104 = v102;
          goto LABEL_197;
        }
      }

      if (*v8 > v107)
      {
        v173 = *(a2 - 1);
        v9[4] = *v8;
        *(a2 - 2) = v107;
        v174 = v9[4];
        v175 = v9[5];
        v9[5] = v173;
        *(a2 - 1) = v175;
        v176 = v9[2];
        if (v174 > v176)
        {
          v177 = v9[3];
          v178 = v9[5];
          v9[2] = v174;
          v9[3] = v178;
          v9[4] = v176;
          v9[5] = v177;
          v179 = *v9;
          if (v174 > *v9)
          {
            v180 = v9[1];
            *v9 = v174;
            v9[1] = v178;
            v9[2] = v179;
            v9[3] = v180;
          }
        }
      }

      return result;
    }

    if (v10 == 5)
    {

      return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,vp::vx::components::Audio_Issue_Detector::Node_Decorator::add_audio_issue_detector(unsigned int,vp::vx::io::Direction,vp::services::Audio_Issue_Detector_Node_ID)::$_0 &,std::tuple<unsigned int,vp::services::Audio_Issue_Detector_Node_ID> *,0>(v9, v9 + 2, v9 + 4, v9 + 6, a2 - 2);
    }

LABEL_10:
    if (v10 <= 23)
    {
      v109 = v9 + 2;
      v111 = v9 == a2 || v109 == a2;
      if (a4)
      {
        if (!v111)
        {
          v112 = 0;
          v113 = v9;
          do
          {
            v114 = v113[2];
            v115 = *v113;
            v113 = v109;
            if (v114 > v115)
            {
              v117 = *v109;
              v116 = v109[1];
              v118 = v112;
              while (1)
              {
                v119 = v9 + v118;
                v120 = *(v9 + v118 + 4);
                *(v119 + 2) = v115;
                *(v119 + 3) = v120;
                if (!v118)
                {
                  break;
                }

                v115 = *(v119 - 2);
                v118 -= 8;
                if (v115 >= v117)
                {
                  v121 = (v9 + v118 + 8);
                  goto LABEL_132;
                }
              }

              v121 = v9;
LABEL_132:
              *v121 = v117;
              v121[1] = v116;
            }

            v109 = v113 + 2;
            v112 += 8;
          }

          while (v113 + 2 != a2);
        }
      }

      else if (!v111)
      {
        v165 = v9 + 3;
        do
        {
          v166 = v7[2];
          v167 = *v7;
          v7 = v109;
          if (v166 > v167)
          {
            v168 = *v109;
            v169 = v165;
            do
            {
              v170 = v169;
              v171 = *(v169 - 2);
              v169 -= 2;
              *(v170 - 1) = v167;
              *v170 = v171;
              v167 = *(v170 - 5);
            }

            while (v167 < v168);
            *(v169 - 1) = v168;
          }

          v109 = v7 + 2;
          v165 += 2;
        }

        while (v7 + 2 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v9 != a2)
      {
        v122 = (v10 - 2) >> 1;
        v123 = v122;
        do
        {
          v124 = v123;
          if (v122 >= v123)
          {
            v125 = (2 * v123) | 1;
            v126 = &v9[2 * v125];
            v127 = *v126;
            if (2 * v124 + 2 < v10)
            {
              v128 = v126[2];
              v129 = v127 > v128;
              if (v127 >= v128)
              {
                v127 = v126[2];
              }

              if (v129)
              {
                v126 += 2;
                v125 = 2 * v124 + 2;
              }
            }

            v130 = &v9[2 * v124];
            if (v127 <= *v130)
            {
              v131 = *v130;
              v132 = v130[1];
              do
              {
                v133 = v130;
                v130 = v126;
                v134 = v126[1];
                *v133 = v127;
                v133[1] = v134;
                if (v122 < v125)
                {
                  break;
                }

                v135 = (2 * v125) | 1;
                v126 = &v9[2 * v135];
                v125 = 2 * v125 + 2;
                v127 = *v126;
                if (v125 >= v10)
                {
                  v125 = v135;
                }

                else
                {
                  result = v126 + 2;
                  v136 = v126[2];
                  v137 = v127 > v136;
                  if (v127 >= v136)
                  {
                    v127 = v126[2];
                  }

                  if (v137)
                  {
                    v126 += 2;
                  }

                  else
                  {
                    v125 = v135;
                  }
                }
              }

              while (v127 <= v131);
              *v130 = v131;
              v130[1] = v132;
            }
          }

          v123 = v124 - 1;
        }

        while (v124);
        do
        {
          v138 = 0;
          v139 = *v9;
          v140 = v9;
          do
          {
            v141 = &v140[2 * v138];
            v142 = v141 + 2;
            v143 = v141[2];
            v144 = (2 * v138) | 1;
            v138 = 2 * v138 + 2;
            if (v138 >= v10)
            {
              v138 = v144;
            }

            else
            {
              v147 = v141[4];
              v145 = v141 + 4;
              v146 = v147;
              v148 = v143 > v147;
              if (v143 >= v147)
              {
                v143 = v146;
              }

              if (v148)
              {
                v142 = v145;
              }

              else
              {
                v138 = v144;
              }
            }

            v149 = v142[1];
            *v140 = v143;
            v140[1] = v149;
            v140 = v142;
          }

          while (v138 <= ((v10 - 2) >> 1));
          if (v142 == a2 - 2)
          {
            *v142 = v139;
          }

          else
          {
            *v142 = *(a2 - 1);
            *(a2 - 1) = v139;
            v150 = (v142 - v9 + 8) >> 3;
            v129 = v150 < 2;
            v151 = v150 - 2;
            if (!v129)
            {
              v152 = v151 >> 1;
              v153 = &v9[2 * v152];
              v154 = *v153;
              if (*v153 > *v142)
              {
                v155 = *v142;
                v156 = v142[1];
                do
                {
                  v157 = v142;
                  v142 = v153;
                  v158 = v153[1];
                  *v157 = v154;
                  v157[1] = v158;
                  if (!v152)
                  {
                    break;
                  }

                  v152 = (v152 - 1) >> 1;
                  v153 = &v9[2 * v152];
                  v154 = *v153;
                }

                while (*v153 > v155);
                *v142 = v155;
                v142[1] = v156;
              }
            }
          }

          a2 -= 2;
          v129 = v10-- <= 2;
        }

        while (!v129);
      }

      return result;
    }

    v11 = &v9[2 * (v10 >> 1)];
    v12 = *v8;
    if (v10 >= 0x81)
    {
      v13 = *v11;
      v14 = v11[1];
      v15 = *v9;
      if (*v11 <= *v9)
      {
        if (v12 > v13)
        {
          v23 = *(a2 - 1);
          *v11 = v12;
          v11[1] = v23;
          *(a2 - 2) = v13;
          *(a2 - 1) = v14;
          v24 = *v9;
          if (*v11 > *v9)
          {
            v25 = v9[1];
            v26 = v11[1];
            *v9 = *v11;
            v9[1] = v26;
            *v11 = v24;
            v11[1] = v25;
          }
        }
      }

      else
      {
        v16 = v9[1];
        if (v12 > v13)
        {
          v17 = *(a2 - 1);
          *v9 = v12;
          v9[1] = v17;
          goto LABEL_27;
        }

        *v9 = v13;
        v9[1] = v14;
        *v11 = v15;
        v11[1] = v16;
        if (*v8 > v15)
        {
          v31 = *(a2 - 1);
          *v11 = *v8;
          v11[1] = v31;
LABEL_27:
          *(a2 - 2) = v15;
          *(a2 - 1) = v16;
        }
      }

      v33 = *(v11 - 2);
      v34 = *(v11 - 1);
      v32 = v11 - 2;
      v35 = v9[2];
      v36 = *(a2 - 4);
      if (v33 <= v35)
      {
        if (v36 > v33)
        {
          v39 = *(a2 - 3);
          *v32 = v36;
          *(v11 - 1) = v39;
          *(a2 - 4) = v33;
          *(a2 - 3) = v34;
          v40 = v9[2];
          if (*v32 > v40)
          {
            v41 = v9[3];
            v42 = *(v11 - 1);
            v9[2] = *v32;
            v9[3] = v42;
            *v32 = v40;
            *(v11 - 1) = v41;
          }
        }
      }

      else
      {
        v37 = v9[3];
        if (v36 > v33)
        {
          v38 = *(a2 - 3);
          v9[2] = v36;
          v9[3] = v38;
          goto LABEL_39;
        }

        v9[2] = v33;
        v9[3] = v34;
        *v32 = v35;
        *(v11 - 1) = v37;
        v44 = *(a2 - 4);
        if (v44 > v35)
        {
          v45 = *(a2 - 3);
          *v32 = v44;
          *(v11 - 1) = v45;
LABEL_39:
          *(a2 - 4) = v35;
          *(a2 - 3) = v37;
        }
      }

      v46 = v11 + 2;
      v47 = v11[2];
      v48 = v11 + 3;
      v49 = v11[3];
      v50 = v9[4];
      v51 = *(a2 - 6);
      if (v47 <= v50)
      {
        if (v51 > v47)
        {
          v54 = *(a2 - 5);
          *v46 = v51;
          v11[3] = v54;
          *(a2 - 6) = v47;
          *(a2 - 5) = v49;
          v55 = v9[4];
          if (*v46 > v55)
          {
            v56 = v9[5];
            v57 = v11[3];
            v9[4] = *v46;
            v9[5] = v57;
            *v46 = v55;
            v11[3] = v56;
          }
        }
      }

      else
      {
        v52 = v9[5];
        if (v51 > v47)
        {
          v53 = *(a2 - 5);
          v9[4] = v51;
          v9[5] = v53;
          goto LABEL_48;
        }

        v9[4] = v47;
        v9[5] = v49;
        *v46 = v50;
        v11[3] = v52;
        v58 = *(a2 - 6);
        if (v58 > v50)
        {
          v59 = *(a2 - 5);
          *v46 = v58;
          v11[3] = v59;
LABEL_48:
          *(a2 - 6) = v50;
          *(a2 - 5) = v52;
        }
      }

      v61 = *v11;
      v60 = v11[1];
      v63 = *v32;
      v62 = *(v11 - 1);
      v64 = *v46;
      if (*v11 <= *v32)
      {
        if (v64 > v61)
        {
          result = v11[3];
          *v11 = v64;
          v11[1] = result;
          *v46 = v61;
          v11[3] = v60;
          if (v64 > v63)
          {
            *v11 = v63;
            v48 = v11 + 1;
            v60 = v62;
            *v32 = v64;
            *(v11 - 1) = result;
            goto LABEL_57;
          }

          v60 = result;
          v61 = v64;
        }
      }

      else
      {
        if (v64 > v61)
        {
          v65 = v11[3];
          *v46 = v63;
          *v32 = v64;
          *(v11 - 1) = v65;
          v63 = v61;
          goto LABEL_57;
        }

        *v32 = v61;
        *(v11 - 1) = v60;
        *v11 = v63;
        v11[1] = v62;
        if (v64 <= v63)
        {
          v60 = v62;
        }

        else
        {
          v60 = v11[3];
          *v46 = v63;
          *v11 = v64;
          v11[1] = v60;
          v63 = v64;
LABEL_57:
          *v48 = v62;
        }

        v61 = v63;
      }

      v66 = *v9;
      *v9 = v61;
      v9[1] = v60;
      *v11 = v66;
      goto LABEL_60;
    }

    v19 = *v9;
    v18 = v9[1];
    v20 = *v11;
    if (*v9 <= *v11)
    {
      if (v12 > v19)
      {
        v27 = *(a2 - 1);
        *v9 = v12;
        v9[1] = v27;
        *(a2 - 2) = v19;
        *(a2 - 1) = v18;
        v28 = *v11;
        if (*v9 > *v11)
        {
          v29 = v11[1];
          v30 = v9[1];
          *v11 = *v9;
          v11[1] = v30;
          *v9 = v28;
          v9[1] = v29;
        }
      }

      goto LABEL_60;
    }

    v21 = v11[1];
    if (v12 <= v19)
    {
      *v11 = v19;
      v11[1] = v18;
      *v9 = v20;
      v9[1] = v21;
      if (*v8 <= v20)
      {
        goto LABEL_60;
      }

      v43 = *(a2 - 1);
      *v9 = *v8;
      v9[1] = v43;
    }

    else
    {
      v22 = *(a2 - 1);
      *v11 = v12;
      v11[1] = v22;
    }

    *(a2 - 2) = v20;
    *(a2 - 1) = v21;
LABEL_60:
    --a3;
    if ((a4 & 1) != 0 || *(v9 - 2) > *v9)
    {
      v67 = *v9;
      v68 = v9;
      do
      {
        v69 = v68;
        v71 = v68[2];
        v68 += 2;
        v70 = v71;
      }

      while (v71 > v67);
      v72 = a2;
      if (v69 == v9)
      {
        v72 = a2;
        do
        {
          if (v68 >= v72)
          {
            break;
          }

          v74 = *(v72 - 2);
          v72 -= 2;
        }

        while (v74 <= v67);
      }

      else
      {
        do
        {
          v73 = *(v72 - 2);
          v72 -= 2;
        }

        while (v73 <= v67);
      }

      if (v68 >= v72)
      {
        v9 = v68;
      }

      else
      {
        v75 = *v72;
        v9 = v68;
        v76 = v72;
        do
        {
          v77 = v9[1];
          v78 = v76[1];
          *v9 = v75;
          v9[1] = v78;
          *v76 = v70;
          v76[1] = v77;
          do
          {
            v79 = v9[2];
            v9 += 2;
            v70 = v79;
          }

          while (v79 > v67);
          do
          {
            v80 = *(v76 - 2);
            v76 -= 2;
            v75 = v80;
          }

          while (v80 <= v67);
        }

        while (v9 < v76);
      }

      if (v9 - 2 != v7)
      {
        *v7 = *(v9 - 1);
      }

      *(v9 - 1) = v67;
      if (v68 < v72)
      {
        goto LABEL_83;
      }

      v81 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,vp::vx::components::Audio_Issue_Detector::Node_Decorator::add_audio_issue_detector(unsigned int,vp::vx::io::Direction,vp::services::Audio_Issue_Detector_Node_ID)::$_0 &,std::tuple<unsigned int,vp::services::Audio_Issue_Detector_Node_ID> *>(v7, v9 - 2);
      result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,vp::vx::components::Audio_Issue_Detector::Node_Decorator::add_audio_issue_detector(unsigned int,vp::vx::io::Direction,vp::services::Audio_Issue_Detector_Node_ID)::$_0 &,std::tuple<unsigned int,vp::services::Audio_Issue_Detector_Node_ID> *>(v9, a2);
      if (result)
      {
        a2 = v9 - 2;
        if (!v81)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v81)
      {
LABEL_83:
        result = std::__introsort<std::_ClassicAlgPolicy,vp::vx::components::Audio_Issue_Detector::Node_Decorator::add_audio_issue_detector(unsigned int,vp::vx::io::Direction,vp::services::Audio_Issue_Detector_Node_ID)::$_0 &,std::tuple<unsigned int,vp::services::Audio_Issue_Detector_Node_ID> *,false>(v7, v9 - 2, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v82 = *v9;
      if (*v8 >= *v9)
      {
        v84 = v9 + 2;
        do
        {
          v9 = v84;
          if (v84 >= a2)
          {
            break;
          }

          v84 += 2;
        }

        while (*v9 >= v82);
      }

      else
      {
        do
        {
          v83 = v9[2];
          v9 += 2;
        }

        while (v83 >= v82);
      }

      v85 = a2;
      if (v9 < a2)
      {
        v85 = a2;
        do
        {
          v86 = *(v85 - 2);
          v85 -= 2;
        }

        while (v86 < v82);
      }

      if (v9 < v85)
      {
        v87 = *v9;
        v88 = *v85;
        do
        {
          v89 = v9[1];
          v90 = v85[1];
          *v9 = v88;
          v9[1] = v90;
          *v85 = v87;
          v85[1] = v89;
          do
          {
            v91 = v9[2];
            v9 += 2;
            v87 = v91;
          }

          while (v91 >= v82);
          do
          {
            v92 = *(v85 - 2);
            v85 -= 2;
            v88 = v92;
          }

          while (v92 < v82);
        }

        while (v9 < v85);
      }

      if (v9 - 2 != v7)
      {
        *v7 = *(v9 - 1);
      }

      a4 = 0;
      *(v9 - 1) = v82;
    }
  }

  v97 = v9[2];
  v96 = v9[3];
  v98 = *v9;
  v99 = *v8;
  if (v97 <= *v9)
  {
    if (v99 > v97)
    {
      v159 = *(a2 - 1);
      v9[2] = v99;
      v9[3] = v159;
      *(a2 - 2) = v97;
      *(a2 - 1) = v96;
      v160 = v9[2];
      v161 = *v9;
      if (v160 > *v9)
      {
        v162 = v9[1];
        v163 = v9[3];
        *v9 = v160;
        v9[1] = v163;
        v9[2] = v161;
        v9[3] = v162;
      }
    }
  }

  else
  {
    v100 = v9[1];
    if (v99 <= v97)
    {
      *v9 = v97;
      v9[1] = v96;
      v9[2] = v98;
      v9[3] = v100;
      if (*v8 <= v98)
      {
        return result;
      }

      v172 = *(a2 - 1);
      v9[2] = *v8;
      v9[3] = v172;
    }

    else
    {
      v101 = *(a2 - 1);
      *v9 = v99;
      v9[1] = v101;
    }

    *(a2 - 2) = v98;
    *(a2 - 1) = v100;
  }

  return result;
}